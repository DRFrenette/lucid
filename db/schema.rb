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

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notecards", force: true do |t|
    t.integer  "project_id", null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notecards", ["project_id"], name: "index_notecards_on_project_id", using: :btree

ActiveRecord::Schema.define(version: 20141209145216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "body",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

>>>>>>> Users can comment on prompts
  create_table "projects", force: true do |t|
    t.string   "title",      null: false
    t.string   "category",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "prompts", force: true do |t|
    t.string   "title",       null: false
    t.string   "category",    null: false
    t.string   "body",        null: false
    t.integer  "project_id"
    t.integer  "notecard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",     null: false
  end

  add_index "prompts", ["project_id", "notecard_id"], name: "index_prompts_on_project_id_and_notecard_id", unique: true, using: :btree
  add_index "prompts", ["user_id"], name: "index_prompts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.integer  "level",           default: 1,     null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
