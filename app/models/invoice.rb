class Invoice < ApplicationRecord
  validates :total_items ,:total_price , presence:true

  validates :total_items , numericality: {only_integer: true}
  validates :total_price , numericality: true
  
  belongs_to :companyy
  has_many :items, as: :itemsPoly
  has_one :discount, as: :discountPoly

  before_save :check_discount

  def check_discount
    return discount.present?
  end
  
end
