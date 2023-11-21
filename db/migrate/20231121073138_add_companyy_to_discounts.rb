class AddCompanyyToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_reference :discounts, :companyy, polymorphic: true, null: false
  end
end
