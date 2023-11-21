# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_11_21_073138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companyys", force: :cascade do |t|
    t.string "name"
    t.integer "ntn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "discount_percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "companyy_type", null: false
    t.bigint "companyy_id", null: false
    t.index ["companyy_type", "companyy_id"], name: "index_discounts_on_companyy"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "total_items"
    t.integer "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "companyy_id", null: false
    t.string "itemsPoly_type", null: false
    t.bigint "itemsPoly_id", null: false
    t.string "discountPoly_type", null: false
    t.bigint "discountPoly_id", null: false
    t.index ["companyy_id"], name: "index_invoices_on_companyy_id"
    t.index ["discountPoly_type", "discountPoly_id"], name: "index_invoices_on_discountPoly"
    t.index ["itemsPoly_type", "itemsPoly_id"], name: "index_invoices_on_itemsPoly"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "companyy_type", null: false
    t.bigint "companyy_id", null: false
    t.index ["companyy_type", "companyy_id"], name: "index_items_on_companyy"
  end

  add_foreign_key "invoices", "companyys"
end
