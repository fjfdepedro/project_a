class Shopper < ActiveRecord::Base
  validates :email, presence: true, email: true
  validates :nif, presence: true, nif: true

  has_many :orders

  attr_accessible :name, :email, :nif
end
