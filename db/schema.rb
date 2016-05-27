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

ActiveRecord::Schema.define(version: 20160525022842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_tops", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "area_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edits", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_users", force: true do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "area"
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.integer  "job_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mypages", force: true do |t|
    t.string   "name"
    t.string   "kana"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_edits", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tops", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "kana"
    t.string   "sex"
    t.integer  "age"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
