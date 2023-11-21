class Discount < ApplicationRecord
  belongs_to :discountPoly, polymorphic: true

  validates :discount_percent , presence: true, numericality: true
end
