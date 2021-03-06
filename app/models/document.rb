class Document < ActiveRecord::Base
  belongs_to :user
  has_many :members
  accepts_nested_attributes_for :members, reject_if: :all_blank, allow_destroy: true
  PRODUCT_TYPES = ["X-17 Black", "X-17 White"]
  PAYMENT_TYPES = [ "Check", "Credit card", "Paypal" ]
  validates :name, :business, :email, :phone, presence: true
  validates :product, inclusion: PRODUCT_TYPES
  validates :payment, inclusion: PAYMENT_TYPES
end
