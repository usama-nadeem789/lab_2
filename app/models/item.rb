class Item < ApplicationRecord

  belongs_to :company
  
  validates :name ,:price , presence: true
  validates :price , numericality: true
end
