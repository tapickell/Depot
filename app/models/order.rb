class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  has_many :line_items, dependent: :destroy

  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
end
