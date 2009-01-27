class CreateShareSettings < ActiveRecord::Migration
  def self.up
    create_table :share_settings do |t|
      t.string :sharesetting_type
      t.float :certificate_cost
      t.float :share_value
      t.float :entrance_fee
      t.timestamps
    end
    ShareSetting.create(:sharesetting_type=>"Standard",:certificate_cost=>"5.0",:share_value=>"10.0",:entrance_fee=>"1.0")
  end

  def self.down
    drop_table :share_settings
  end
end
