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

ActiveRecord::Schema.define(version: 20150601101354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.string   "name"
    t.string   "appetize_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "url_token"
    t.string   "module_name"
    t.text     "bundle"
    t.integer  "creator_id"
    t.integer  "build_id"
    t.integer  "view_count",     default: 0, null: false
    t.integer  "forked_play_id"
    t.boolean  "pick"
  end

  add_index "plays", ["name"], name: "index_plays_on_name", using: :btree

  create_table "rn_apps", force: :cascade do |t|
    t.string   "name"
    t.string   "s3_url"
    t.text     "description"
    t.string   "author"
    t.string   "github_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "app_bundle"
    t.string   "module_name"
    t.integer  "build_id"
    t.integer  "creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "old_avatar_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.boolean  "admin"
    t.string   "avatar"
    t.boolean  "use_vim_keybindings"
    t.boolean  "use_dark_theme"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
