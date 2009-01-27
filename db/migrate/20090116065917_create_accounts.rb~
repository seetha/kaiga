class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.column :maingroup_id, :integer
      t.column :subgroup_id, :integer
      t.column :acname, :string
      t.column :description, :string
      t.column :openingbalance, :float
      t.column :closingbalance, :float
      t.column :category, :string #creditor,debtor,bank,general account
      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
