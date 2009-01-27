class CreateFdSettings < ActiveRecord::Migration
  def self.up
    create_table :fd_settings do |t|
      t.string :fdsetting_type
      t.float :interest_rate
      t.integer :calculated
      t.integer :compounded
      t.timestamps
    end
    FdSetting.create(:fdsetting_type=>"180 days to < 1 Year",:interest_rate=>"8.5",:calculated=>"4",:compounded=>"4")
    FdSetting.create(:fdsetting_type=>"More than 1 Year < 2 Year",:interest_rate=>"10",:calculated=>"4",:compounded=>"4")
     FdSetting.create(:fdsetting_type=>"More than 2 Years ",:interest_rate=>"10.25",:calculated=>"4",:compounded=>"4")
    end

  def self.down
    drop_table :fd_settings
  end
end
