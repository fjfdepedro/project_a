
class FeeConfigurationsType < ActiveRecord::Base
  has_many :fee_configurations
  belongs_to :merchant
end
