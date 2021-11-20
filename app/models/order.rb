class Order < ActiveRecord::Base
  validates :amount, presence: true
  validates :status, presence: true, status: true
  belongs_to :merchant
  belongs_to :shopper

  attr_accessor :amount, :status
end
