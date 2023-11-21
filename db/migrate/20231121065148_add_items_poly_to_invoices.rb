class AddItemsPolyToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :invoices, :itemsPoly, polymorphic: true, null: false
  end
end
