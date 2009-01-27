class LoanItem < ActiveRecord::Base
belongs_to :loan
has_many :loan_details
end
