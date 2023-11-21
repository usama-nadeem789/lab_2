class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      # t.belongs_to :company
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
