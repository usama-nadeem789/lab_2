class Invoice < ApplicationRecord
  validates :total_items ,:total_price , presence:true
  validates :total_items , numericality: {only_integer:true}
  validates :total_price , numericality: true
end
