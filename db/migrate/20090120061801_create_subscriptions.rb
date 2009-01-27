class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.integer :member_id
      t.float :subscription_amount
      t.float :cumulative_subscription
      t.integer :subscription_type

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
