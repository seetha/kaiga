class CreateFdItems < ActiveRecord::Migration
  def self.up
    create_table :fd_items do |t|
      t.column :fd_amount, :float
      t.column :paid_vide, :string
      t.column :inst_no, :string
      t.column :inst_date, :string
      t.column :date_of_receipt,:date
      t.column :rate_of_interest,:float
      t.column :period_of_deposit,:string
      t.column :due_date_of_maturity, :date
      t.column :fd_certificate_no,:string
      t.column :maturity_value ,:float
      t.column :renewed,:string
      t.column :status,:string
      t.timestamps
    end
  end

  def self.down
    drop_table :fd_items
  end
end
