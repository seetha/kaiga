class CreateSubscriptionSettings < ActiveRecord::Migration
  def self.up
    create_table :subscription_settings do |t|
      t.string :subscription_type
      t.float :interest_rate
      t.integer :calculated
      t.integer :compounded

      t.timestamps
    end
  end

  def self.down
    drop_table :subscription_settings
  end
end
