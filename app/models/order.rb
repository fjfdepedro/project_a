class Order < ActiveRecord::Base
  validates :amount, presence: true
  validates :status, presence: true, status: true
  belongs_to :merchant
  belongs_to :shopper
  has_one :disbursement

end
