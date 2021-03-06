# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  include RoleRequirementSystem
  
  helper :all # include all helpers, all the time
  filter_parameter_logging :password, :password_confirmation
  before_filter :login_required 
  
  # Return the value for a given setting
  def s(identifier)
    Setting.get(identifier)
  end
  helper_method :s
 
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '9fe6825f97cc334d88925fde5c4808a8'
 Arr=[['Sunday','0'],['Monday','1'],['Tuesday','2'],['Wednesday','3'],['Thursday','4'],['Friday','5'],['Saturday','6']] 
 
 def convert_interest(interest)
 	return interest/100
 end
 
 def subscription_calculations
 	interest_rate = convert_interest(SubscriptionSetting.find(1).interest_rate) # based on subscription type
	previous_subscription_amount = 200 #from subscription_details table.
	previous_total = 6700 #from subscription_details table, old accrued amount
	previous_interest = 36.29 #from subscription_details table
    subscription_amount = 100
	accrued_amount = subscription_amount + previous_total + previous_interest
	new_interest = (((previous_total + previous_interest + previous_subscription_amount)*interest_rate)/12)
	return new_interest
 end

 def loan_calculations
	principal = 100000
    interest = 0.0875
	n = 120
    i = interest/12
	#emi = principal * (interest / 12) * ((( 1 + (interest / 12)) ** n) / ((( 1 + (interest / 12) ** n)) - 1))
	emi = principal * i * ((( 1 + i ) ** n) / ((( 1 + i) ** n) - 1))
	return emi 
 end

 def installment_amount

 end

 def number_of_installments

 end

 def check_eligibility
	basic = 6500
	service = 4
	shares = 600
	
 end

 def fd_calculations

 end

end
