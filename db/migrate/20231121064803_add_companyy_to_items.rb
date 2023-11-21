class AddCompanyyToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :companyy, polymorphic: true, null: false
  end
end
