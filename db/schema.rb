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

ActiveRecord::Schema.define(version: 2018_12_09_201511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "replacement_phrases", force: :cascade do |t|
    t.text "text"
    t.integer "upvotes", default: 0
    t.integer "downvotes", default: 0
    t.bigint "speciesist_phrase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciesist_phrase_id"], name: "index_replacement_phrases_on_speciesist_phrase_id"
  end

  create_table "speciesist_phrases", force: :cascade do |t|
    t.integer "importance_points", default: 1
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "replacement_phrases", "speciesist_phrases"
end
