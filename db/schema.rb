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

ActiveRecord::Schema.define(version: 20131104175228) do

  create_table "appointments", force: true do |t|
    t.integer  "doctor_id"
    t.integer  "medical_shop_id"
    t.integer  "tab_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id", using: :btree
  add_index "appointments", ["medical_shop_id"], name: "index_appointments_on_medical_shop_id", using: :btree
  add_index "appointments", ["tab_user_id"], name: "index_appointments_on_tab_user_id", using: :btree

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medical_shops", force: true do |t|
    t.string   "shop_name"
    t.text     "shop_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tab_users", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "employee_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "password_digest"
    t.boolean  "admin",              default: false
  end

end
