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

ActiveRecord::Schema.define(version: 20140705161016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cleaners", force: true do |t|
    t.string   "area"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "home_address"
    t.string   "home_address_zipcode"
    t.string   "home_address_city"
    t.string   "work_address"
    t.string   "work_address_zipcode"
    t.string   "work_address_city"
    t.string   "phone"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["user_id"], name: "index_clients_on_user_id", using: :btree

  create_table "drivers", force: true do |t|
    t.string   "area"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "car"
    t.string   "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "address"
    t.string   "pickup_date"
    t.string   "pickup_time"
    t.string   "return_date"
    t.string   "return_time"
    t.string   "instructions"
    t.boolean  "dry_cleaning"
    t.boolean  "wash"
    t.integer  "client_id"
    t.integer  "cleaner_id"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["cleaner_id"], name: "index_orders_on_cleaner_id", using: :btree
  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree
  add_index "orders", ["driver_id"], name: "index_orders_on_driver_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
