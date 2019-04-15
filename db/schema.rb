# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_15_122532) do

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.string "currency_name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "investments", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id"
    t.integer "currency_id"
    t.integer "bank_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_investments_on_currency_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "savings", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id"
    t.integer "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_savings_on_currency_id"
    t.index ["user_id"], name: "index_savings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "email"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end