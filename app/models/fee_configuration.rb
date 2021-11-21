class FeeConfiguration < ActiveRecord::Base
  belongs_to :fee_configurations_type
  has_many :disbursement
end
