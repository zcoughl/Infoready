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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151009135230) do
=======
ActiveRecord::Schema.define(version: 20151008185412) do

  create_table "datasources", force: :cascade do |t|
    t.text     "source_name"
    t.text     "account"
    t.text     "password"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "datasources", ["user_id"], name: "index_datasources_on_user_id"
>>>>>>> 88b2a5391acad88b77b2f93b18cd02e5bba569c8

  create_table "entries", force: :cascade do |t|
    t.string   "tablename"
    t.string   "colname"
    t.string   "coltype"
    t.integer  "database"
    t.integer  "mapping_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "entries", ["mapping_id"], name: "index_entries_on_mapping_id"

  create_table "groups", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "entry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mappings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string   "user_id"
=======
    t.string   "database"
    t.string   "coltype"
    t.string   "colname"
>>>>>>> 88b2a5391acad88b77b2f93b18cd02e5bba569c8
    t.string   "database2"
    t.string   "database1"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "company"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
