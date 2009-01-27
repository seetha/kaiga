class CreateLoanDetails < ActiveRecord::Migration
  def self.up
    create_table :loan_details do |t|
      t.column :payment_date,:date
      t.column :begining_balance, :float
      t.column :scheduled_payment, :float
      t.column :principal,:float
      t.column :interest, :float
      t.column :ending_balance, :float

      t.timestamps
    end
  end

  def self.down
    drop_table :loan_details
  end
end
