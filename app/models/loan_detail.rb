class LoanDetail < ActiveRecord::Base
 belongs_to :loan
 belongs_to :loan_item
end
