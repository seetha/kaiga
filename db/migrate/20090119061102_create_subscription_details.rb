class CreateSubscriptionDetails < ActiveRecord::Migration
  def self.up
    create_table :subscription_details do |t|
      t.date :calculated_date
      t.string :interest_month
      t.float :subscription_amount
      t.float :interest_amount
      t.float :accrued_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :subscription_details
  end
end
