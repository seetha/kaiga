class FixedDeposit < ActiveRecord::Base
 belongs_to :member
 has_many :fd_details
 has_many :fd_items
end
