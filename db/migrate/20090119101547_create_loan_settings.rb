class CreateLoanSettings < ActiveRecord::Migration
  def self.up
    create_table :loan_settings do |t|
      t.string :loansetting_type
      t.float :annual_interest_rate
      t.float :dearness_allowance
      t.timestamps
    end
    LoanSetting.create(:loansetting_type=>"Standard",:annual_interest_rate=>"8",:dearness_allowance=>"")
  end

  def self.down
    drop_table :loan_settings
  end
end
