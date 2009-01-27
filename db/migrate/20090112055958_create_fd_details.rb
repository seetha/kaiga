class CreateFdDetails < ActiveRecord::Migration
  def self.up
    create_table :fd_details do |t|
      t.date  :calculated_date
      t.float :intrest
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :fd_details
  end
end
