class Shopper < ActiveRecord::Base
  belongs_to :merchant, :shopper
  attr_accessor :amount, :status, :complete_at, :dirbursed_at
end
