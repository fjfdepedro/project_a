class Disbursement < ActiveRecord::Base
  belongs_to :order
  belongs_to :fee_configuration

  attr_accessor :order, :fee_configuration
end