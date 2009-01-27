class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.column :transactionno, :integer
      t.column :date, :date
      t.column :transaction_category, :string #type of voucher - journal, cash,purchase, sale, contra, debit note, credit note
      t.column :narrations, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
