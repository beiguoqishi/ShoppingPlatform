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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120106074719) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
    t.string   "url"
    t.integer  "category_id"
  end

  create_table "product_items", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "belonged_shop"
    t.string   "area"
    t.integer  "deals"
    t.float    "trans_expense"
    t.string   "picture"
    t.string   "color"
    t.float    "eval_grade"
    t.float    "own_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "desc"
    t.integer  "category_id"
  end

  create_table "shop_addresses", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.datetime "building_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "gender"
    t.string   "nickname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
