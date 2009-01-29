class AddMemberSettingValues < ActiveRecord::Migration
  def self.up
    MemberSetting.create(:dearness_allowance => 6.5 , :retirement_age => 60)
  end

  def self.down
  end
end
