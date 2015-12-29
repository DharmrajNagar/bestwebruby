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

ActiveRecord::Schema.define(version: 20151223075259) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.text     "text",       limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name",          limit: 255
    t.text     "last_name",           limit: 65535
    t.string   "f_name",              limit: 255
    t.string   "date_of_birth",       limit: 255
    t.string   "age",                 limit: 255
    t.string   "blood_group",         limit: 255
    t.string   "mobile",              limit: 255
    t.text     "address_line_1",      limit: 65535
    t.text     "address_line_2",      limit: 65535
    t.string   "city_id",             limit: 255
    t.string   "state_id",            limit: 255
    t.string   "country_id",          limit: 255
    t.string   "zip_code",            limit: 255
    t.string   "image",               limit: 255
    t.string   "resume",              limit: 255
    t.string   "last_ip",             limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "image_file_name",     limit: 255
    t.string   "image_content_type",  limit: 255
    t.integer  "image_file_size",     limit: 4
    t.datetime "image_updated_at"
    t.string   "resume_file_name",    limit: 255
    t.string   "resume_content_type", limit: 255
    t.integer  "resume_file_size",    limit: 4
    t.datetime "resume_updated_at"
  end

end
