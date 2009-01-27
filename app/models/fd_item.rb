class FdItem < ActiveRecord::Base
belongs_to :fixed_deposit
has_many :fd_details
end
