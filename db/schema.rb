# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150519110115) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.integer  "profit_per_month"
    t.integer  "bill"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "credit_departments", force: :cascade do |t|
    t.integer  "free_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_types", force: :cascade do |t|
    t.string   "kind"
    t.integer  "percent"
    t.integer  "max_sum"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "currency_id"
  end

  add_index "credit_types", ["currency_id"], name: "index_credit_types_on_currency_id"

  create_table "creditors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credits", force: :cascade do |t|
    t.datetime "data_begin"
    t.integer  "sum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "kind_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposit_departments", force: :cascade do |t|
    t.integer  "all_deposit_profit"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.datetime "data_begin"
    t.integer  "sum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exchange_departments", force: :cascade do |t|
    t.integer  "dollars"
    t.integer  "euro"
    t.integer  "bel_rub"
    t.integer  "rus_rub"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "money", force: :cascade do |t|
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "the_banks", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.integer  "start_capital"
    t.integer  "money_total"
    t.integer  "money_on_credits"
    t.integer  "money_on_deposits"
    t.integer  "money_dollars"
    t.integer  "money_bel"
    t.integer  "money_rus"
    t.integer  "money_euro"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "warrantors", force: :cascade do |t|
    t.integer  "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
