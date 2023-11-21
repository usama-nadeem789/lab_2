class Companyy < ApplicationRecord
  has_many :items , as: :itemsPoly
  has_many :invoices
  has_one :discount, as: :discountPoly 

  validates :name , :ntn , presence: true, uniqueness:true
  validates :ntn , numericality: {integer_only: true}
  
  before_save :check_company_discount unless invoice.discount.present?

  def check_company_discount
   return discount.present?
  end

end
