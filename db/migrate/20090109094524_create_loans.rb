class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.string :no_of_shares_held
      t.string :telephone_office
      t.string :telephone_residence
      t.float :basic_pay
      t.float :take_home_pay
      t.string :amount_of_loan_applied
      t.string :purpose_of_loan
      t.string :outstanding_loan
      t.string :other_information
      t.date :doj_society
      t.string :applicant_mo_no
      t.float :eligible_for
      t.string :no_of_existing_shares
      t.string :no_of_shares_to_be_deducted
      t.string :loan_no
      t.date :loan_date
      t.string :installments
      t.string :share
      t.float :entrance_fees
      t.string :long_term_loan_principle
      t.float :interest
      t.string :rounding_off
      t.float :amount
      t.string :priority
      t.string :long_term_loan_saction
      t.string :deductions
      t.string :net_payable
      t.string :type
      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
end
