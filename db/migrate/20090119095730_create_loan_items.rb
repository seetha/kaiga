class CreateLoanItems < ActiveRecord::Migration
  def self.up
    create_table :loan_items do |t|
      t.float :loan_amount
      t.integer :installment
      t.date :starting_month_of_loan
      t.float :emi
      t.float :total_interest
      t.float :total_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :loan_items
  end
end
