class AddCompanyyToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :invoices, :companyy, null: false, foreign_key: true
  end
end
