class Item < ApplicationRecord

  belongs_to :itemsPoly , polymorphic: true
  
  validates :name ,:price , presence: true
  validates :price , numericality: true
end
