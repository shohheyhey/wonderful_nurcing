# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_07_052934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.bigint "office_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_categories_on_office_id"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "office_id"
    t.bigint "category_id"
    t.string "name"
    t.integer "age"
    t.date "birthday"
    t.integer "kaigodo"
    t.text "medical_history"
    t.text "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_customers_on_category_id"
    t.index ["office_id"], name: "index_customers_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_offices_on_confirmation_token", unique: true
    t.index ["email"], name: "index_offices_on_email", unique: true
    t.index ["reset_password_token"], name: "index_offices_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_offices_on_uid_and_provider", unique: true
  end

  create_table "service_customers", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_service_customers_on_customer_id"
    t.index ["service_id"], name: "index_service_customers_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.bigint "office_id"
    t.bigint "category_id"
    t.string "name"
    t.integer "fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_services_on_category_id"
    t.index ["office_id"], name: "index_services_on_office_id"
  end

  add_foreign_key "categories", "offices"
  add_foreign_key "customers", "categories"
  add_foreign_key "customers", "offices"
  add_foreign_key "service_customers", "customers"
  add_foreign_key "service_customers", "services"
  add_foreign_key "services", "categories"
  add_foreign_key "services", "offices"
end
