class CreateCompanys < ActiveRecord::Migration[6.1]
  def change
    create_table :companys do |t|
      t.string :name
      t.integer :ntn
      t.references :item

      t.timestamps
    end
  end
end
