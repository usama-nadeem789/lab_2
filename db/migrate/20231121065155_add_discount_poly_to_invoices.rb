class AddDiscountPolyToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :invoices, :discountPoly, polymorphic: true, null: false
  end
end
