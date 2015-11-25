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

ActiveRecord::Schema.define(version: 20151124154236) do

  create_table "goals", force: :cascade do |t|
    t.integer  "match_id",    limit: 4
    t.integer  "player_id",   limit: 4
    t.integer  "opponent_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "team1_id",   limit: 4
    t.integer  "team2_id",   limit: 4
    t.date     "date"
    t.string   "result",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "age",          limit: 4
    t.string   "position",     limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "team_id",      limit: 4
    t.integer  "green_cards",  limit: 4
    t.integer  "yellow_cards", limit: 4
    t.integer  "red_cards",    limit: 4
    t.string   "photo",        limit: 255, default: "unknown.jpg"
  end

  create_table "reports", force: :cascade do |t|
    t.text     "article",    limit: 65535
    t.string   "photo",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "motto",      limit: 255
    t.integer  "points",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug",       limit: 255
    t.string   "captain",    limit: 255
    t.string   "color",      limit: 255
  end

  add_index "teams", ["slug"], name: "index_teams_on_slug", unique: true, using: :btree

end
