class CreateLoanSchedules < ActiveRecord::Migration
  def self.up
    create_table :loan_schedules do |t|
      t.date :payment_date
      t.float :begining_balance
      t.float :scheduled_payment
      t.float :principal
      t.float :interest
      t.float :ending_balance

      t.timestamps
    end
  end

  def self.down
    drop_table :loan_schedules
  end
end
