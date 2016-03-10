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

ActiveRecord::Schema.define(version: 20160309212913) do

  create_table "matches", primary_key: "number", force: :cascade do |t|
    t.string   "event_key"
    t.string   "comp_level"
    t.text     "alliances"
    t.text     "score_breakdown"
    t.text     "videos"
    t.datetime "time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "performances", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "match_id"
    t.boolean  "auto_reach"
    t.boolean  "auto_cross"
    t.text     "auto_defenses_crossed"
    t.boolean  "auto_shoot"
    t.boolean  "auto_shoot_high"
    t.boolean  "auto_shoot_high_successful"
    t.boolean  "auto_shoot_low"
    t.boolean  "auto_shoot_low_successful"
    t.text     "tele_defenses_crossed"
    t.string   "tele_time_taken"
    t.integer  "tele_high_missed"
    t.integer  "tele_high_scored"
    t.integer  "tele_low_missed"
    t.integer  "tele_low_scored"
    t.boolean  "challenged"
    t.boolean  "scaled"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "performances", ["match_id"], name: "index_performances_on_match_id"
  add_index "performances", ["team_id"], name: "index_performances_on_team_id"

  create_table "table_users", force: :cascade do |t|
    t.string "name"
  end

  create_table "teams", primary_key: "team_number", force: :cascade do |t|
    t.string   "nickname"
    t.string   "location"
    t.string   "key"
    t.text     "images"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "events"
    t.text     "driver_feedback"
    t.boolean  "driverDidFoul"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
