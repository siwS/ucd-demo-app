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

ActiveRecord::Schema.define(version: 20180526221557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensitive_models", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_permissions", force: :cascade do |t|
    t.string  "username",             limit: 50,                 null: false
    t.string  "sensitive_model_name", limit: 50,                 null: false
    t.boolean "allow_write",                     default: false, null: false
    t.boolean "allow_read",                      default: false, null: false
  end

  create_table "users", id: :bigserial, force: :cascade do |t|
    t.string   "name",         limit: 50, null: false
    t.string   "surname",      limit: 50, null: false
    t.text     "address"
    t.string   "phone_number", limit: 20, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "widgets", id: :bigserial, force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
