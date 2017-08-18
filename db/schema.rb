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

ActiveRecord::Schema.define(version: 20170817143320) do

  create_table "animals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "species"
    t.string   "name"
    t.integer  "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "animals", ["user_id"], name: "index_animals_on_user_id"

  create_table "bags", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bags", ["user_id"], name: "index_bags_on_user_id"

  create_table "custom_quests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "due_time"
    t.text     "content"
    t.boolean  "did"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_quests", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.boolean  "did"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "daily_quests", ["user_id"], name: "index_daily_quests_on_user_id"

  create_table "dresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dresses", ["user_id"], name: "index_dresses_on_user_id"

  create_table "friends", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.boolean  "accept"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hats", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "hats", ["user_id"], name: "index_hats_on_user_id"

  create_table "menus", force: :cascade do |t|
    t.string   "category"
    t.integer  "type_num"
    t.string   "name"
    t.integer  "need_coin"
    t.string   "description"
    t.float    "coin_percent"
    t.float    "exp_percent"
    t.float    "other_percent"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "party_partners", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "party_quest_id"
    t.boolean  "did"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "party_partners", ["party_quest_id"], name: "index_party_partners_on_party_quest_id"
  add_index "party_partners", ["user_id"], name: "index_party_partners_on_user_id"

  create_table "party_quests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "due_time"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "party_quests", ["user_id"], name: "index_party_quests_on_user_id"

  create_table "tickets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id"

  create_table "titles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "titles", ["user_id"], name: "index_titles_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "gender"
    t.integer  "level"
    t.integer  "current_exp"
    t.integer  "need_exp"
    t.integer  "coin"
    t.integer  "title_name"
    t.integer  "dress"
    t.integer  "hat"
    t.integer  "bag"
    t.integer  "island"
    t.integer  "pet"
    t.float    "extra_coin"
    t.float    "extra_exp"
    t.integer  "pet_capacity"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
