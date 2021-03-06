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

ActiveRecord::Schema.define(version: 20170227123216) do

  create_table "foods", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "food_type",   null: false
    t.integer  "price",       null: false
    t.string   "vendor_name", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "register_id"
    t.integer  "food_id"
    t.integer  "quantity",    null: false
    t.integer  "total",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["food_id"], name: "index_orders_on_food_id"
    t.index ["register_id"], name: "index_orders_on_register_id"
  end

  create_table "registers", force: :cascade do |t|
    t.string   "username",     null: false
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "email",        null: false
    t.text     "address",      null: false
    t.string   "phone_number", null: false
    t.string   "password",     null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
