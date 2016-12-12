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

ActiveRecord::Schema.define(version: 20161212151033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.integer  "card_type"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cards_games", id: false, force: :cascade do |t|
    t.integer "card_id", null: false
    t.integer "game_id", null: false
    t.index ["card_id"], name: "index_cards_games_on_card_id", using: :btree
    t.index ["game_id"], name: "index_cards_games_on_game_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_playable"
    t.boolean  "is_expansion"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "script"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills_survivor_skills", id: false, force: :cascade do |t|
    t.integer "skill_id",          null: false
    t.integer "survivor_skill_id", null: false
    t.index ["skill_id"], name: "index_skills_survivor_skills_on_skill_id", using: :btree
    t.index ["survivor_skill_id"], name: "index_skills_survivor_skills_on_survivor_skill_id", using: :btree
  end

  create_table "survivor_skills", force: :cascade do |t|
    t.integer  "survivor_id"
    t.integer  "starting_level"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["survivor_id"], name: "index_survivor_skills_on_survivor_id", using: :btree
  end

  create_table "survivors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "survivor_skills", "survivors"
end
