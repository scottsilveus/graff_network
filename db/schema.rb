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

ActiveRecord::Schema.define(version: 20160109182810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.string   "picture"
    t.string   "name"
    t.string   "artist"
    t.string   "description"
    t.string   "gps_location"
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "crew_artwork_lookups", force: :cascade do |t|
    t.integer  "crew_id"
    t.integer  "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.string   "state"
    t.string   "country"
  end

  create_table "user_artwork_lookups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_artwork_lookups", ["artwork_id"], name: "index_user_artwork_lookups_on_artwork_id", using: :btree
  add_index "user_artwork_lookups", ["user_id"], name: "index_user_artwork_lookups_on_user_id", using: :btree

  create_table "user_crew_lookups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "crew_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_crew_lookups", ["crew_id"], name: "index_user_crew_lookups_on_crew_id", using: :btree
  add_index "user_crew_lookups", ["user_id"], name: "index_user_crew_lookups_on_user_id", using: :btree

  create_table "user_fave_user_lookups", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_fave_user_lookups", ["followee_id"], name: "index_user_fave_user_lookups_on_followee_id", using: :btree
  add_index "user_fave_user_lookups", ["follower_id", "followee_id"], name: "index_user_fave_user_lookups_on_follower_id_and_followee_id", unique: true, using: :btree
  add_index "user_fave_user_lookups", ["follower_id"], name: "index_user_fave_user_lookups_on_follower_id", using: :btree

  create_table "user_favorited_artwork_lookups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_favorited_crew_lookups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "crew_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_favorited_crew_lookups", ["crew_id"], name: "index_user_favorited_crew_lookups_on_crew_id", using: :btree
  add_index "user_favorited_crew_lookups", ["user_id"], name: "index_user_favorited_crew_lookups_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "tag_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "summary"
    t.string   "status"
    t.string   "instagram"
    t.string   "city"
    t.string   "state"
    t.string   "country"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
