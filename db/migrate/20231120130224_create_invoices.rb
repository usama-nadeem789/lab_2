class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      # t.belongs_to :company
      t.integer :total_items
      t.integer :total_price
      
      t.timestamps
    end
  end 
end
