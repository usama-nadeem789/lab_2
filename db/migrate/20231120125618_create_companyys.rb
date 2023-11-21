class CreateCompanyys < ActiveRecord::Migration[6.1]
  def change
    create_table :companyys do |t|
      t.string :name
      t.integer :ntn

      t.timestamps
    end
  end
end
