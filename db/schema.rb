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

ActiveRecord::Schema.define(version: 20171014202342) do

  create_table "customers", force: :cascade do |t|
    t.string   "last"
    t.string   "first"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.integer  "RegistrationID"
    t.integer  "InquiryID"
    t.integer  "AccountID"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "info"
    t.string   "linkToGame"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "customer_id"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "userid"
    t.string   "password_digest"
    t.string   "password"
    t.string   "password_confirm"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
