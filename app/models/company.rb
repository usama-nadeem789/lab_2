class Company < ApplicationRecord
  
  has_many :items 
  has_many :invoice
  # has_one :discount

  validates :name , :ntn , presence: true, uniqueness:true
  validates :ntn , numericality: true

end
