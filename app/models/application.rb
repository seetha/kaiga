# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '3d94299f07552c1eb84a382824ab45cb'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

#-------------These components can be used to the restful design with just small changes---------------

def update_account(account,credit,debit,transaction_id)#have debit & credit as float in the database

debit = debit.to_f # Just change the type to float in the databasee
credit = credit.to_f
account_object = Account.find(account)
account_type = account_object.maingroup.grouptype
closing_balance = account_object.closingbalance
update_transaction_account(account,transaction_id,credit,debit)
case account_type
 when "Assets"
   if debit == 0
    balance = closing_balance - credit
   elsif credit == 0
    balance = closing_balance + debit  
   end  
 when "Liabilities"
   if debit == 0
    balance = closing_balance + credit
   elsif credit == 0
    balance = closing_balance - debit  
   end
 when "Income"
   if debit == 0
    balance = closing_balance + credit
   elsif
    balance = closing_balance + debit
   end
 when "Expense"
   if debit == 0
    balance = closing_balance + credit
   elsif credit == 0
    balance = closing_balance + debit
   end
 else return 
end
account_object.update_attributes(:closingbalance => balance)

end

def update_transaction(transaction_number, voucher_type, transaction_date, narrations)
transaction = Trasaction.new #Note the change Transaction
transaction.trasactionno = transaction_number #change to underscore transaction_number
transaction.date = transaction_date
transaction.narrations = narrations
transaction.tcategory = voucher_type
transaction.save
return transaction.id
end

def update_transaction_account(account_id,transaction_id,credit,debit)

transaction_account_object = Transactionaccount.new
transaction_account_object.account_id = account_id
transaction_account_object.trasaction_id = transaction_id #Note the change Transaction_id
 if debit == 0
  transaction_account_object.transactioncategory = "Credit"
  transaction_account_object.tamount = credit
  
 elsif credit == 0
  transaction_account_object.transactioncategory = "Debit"
  transaction_account_object.tamount = debit
  
 end
transaction_account_object.save
end

#SELECT * FROM transactionaccounts as t1 WHERE EXISTS (SELECT * FROM transactionaccounts as t2 WHERE t2.account_id = 1 and t1.trasaction_id = t2.trasaction_id) and t1.account_id != 1 LIMIT 0,1000
#ledger_item = Transactionaccount.find(:all, :conditions => ['EXISTS (SELECT * FROM transactionaccounts as t2 WHERE t2.account_id = ? and t1.trasaction_id = t2.trasaction_id) and t1.account_id != ?', account, account])

def display_ledger(account) #We can make this much simpler with a single query. Need not have a 2 dimensional array.
 
 ledger_components = Transactionaccount.find(:all, :conditions => ['EXISTS (SELECT * FROM transactionaccounts as t2 WHERE t2.account_id = ? and transactionaccounts.trasaction_id = t2.trasaction_id) and transactionaccounts.account_id != ?', account, account])#Note the change in transaction_id
     
 
return ledger_components #Please note the array is 2 dimensional. We need to use two 'for' loops to access elements
end

def display_trial_balance #We need to change this if we enhance the above code.
 accounts = Account.find(:all)
 trial_balance_elements = Array.new
 for account in accounts
  trial_balance_elements << sum_of_ledger(account.id)
 end
 return trial_balance_elements #Array returned in the form of name,amount & type
end

def sum_of_ledger(account)
 name = Account.find(account).acname
 sum_of_credit = 0
 sum_of_debit = 0
 ledger_elements = display_ledger(account)
 for each_element in ledger_elements
  
   sum_of_credit += each_element.transactioncategory == "Credit" ? each_element.tamount.to_f : 0
   sum_of_debit +=  each_element.transactioncategory == "Debit" ? each_element.tamount.to_f : 0 
  
 end
 difference = sum_of_credit > sum_of_debit ? sum_of_credit - sum_of_debit : sum_of_debit - sum_of_credit
 type = sum_of_credit > sum_of_debit ? "Credit" : "Debit"
 array_of_values = {"name" => name, "amount" => difference, "type" => type}
 return array_of_values
end

def profit_or_loss
 income = 0
 expense = 0
 accounts_array = p_and_l
 for accounts in accounts_array
  for account in accounts
   if account.maingroup.grouptype == "Income"
    income += account.closingbalance.to_f
   elsif account.maingroup.grouptype == "Expense"
    expense += account.closingbalance.to_f
   end
  end
 end 
balance = income - expense
return balance
end

def p_and_l
 accounts_array = Array.new
 account_groups = Maingroup.find(:all, :conditions => ['grouptype = ? or grouptype = ?',"Income","Expense"])
  for account_group in account_groups
   accounts = account_group.accounts
   accounts_array << accounts
  end
return accounts_array
end

def display_balance_sheet
 balance_sheet_array = Array.new
 main_groups = Maingroup.find(:all, :conditions => ['grouptype = ? or grouptype = ?', "Assets", "Liabilities"])
 for main_group in main_groups
  balance_sheet_array << main_group.groupname
  balance_sheet_array << sum_of_accounts(main_group)
 end
 balance_sheet_array << profit_or_loss
 return balance_sheet_array
end

def sum_of_accounts(main_group)
 accounts = main_group.accounts
 sum = 0
 for account in accounts
  sum += account.closingbalance
 end 
return sum
end

# Tax module, Adjustment entries (entries that are not through voucher. ex:depreciation, interest), Inventory
end
