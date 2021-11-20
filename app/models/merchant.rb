class Merchant < ActiveRecord::Base
  validates :email, presence: true, email: true
  validates :cif, presence: true, cif: true

  has_many :orders
  belongs_to :fee_configurations_type

  attr_accessor :name, :email, :cif
end
