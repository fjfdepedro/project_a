class Order < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :shopper
  attr_accessor :amount, :status, :complete_at, :dirbursed_at
end
