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

ActiveRecord::Schema.define(version: 20140317192510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: true do |t|
    t.string  "name"
    t.text    "description"
    t.text    "image"
    t.decimal "price"
    t.integer "sold"
    t.integer "on_hand"
    t.integer "on_order"
  end

  create_table "products_purchases", force: true do |t|
    t.integer "product_id"
    t.integer "purchase_id"
  end

  create_table "purchases", force: true do |t|
    t.string  "personalization"
    t.string  "status"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string  "type"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "contact"
    t.string  "phone_number"
    t.string  "billing_address"
    t.string  "shipping_address"
  end

end
