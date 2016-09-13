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

ActiveRecord::Schema.define(version: 20160913125943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dances", force: :cascade do |t|
    t.string   "name"
    t.string   "county"
    t.string   "style"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "figures", force: :cascade do |t|
    t.string   "title"
    t.string   "figure"
    t.string   "tune"
    t.integer  "bar_total"
    t.integer  "number"
    t.integer  "dance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructions", force: :cascade do |t|
    t.string   "title"
    t.string   "figure"
    t.string   "tune"
    t.integer  "bar_total"
    t.integer  "bars"
    t.string   "move"
    t.text     "instruction"
    t.string   "call"
    t.integer  "number"
    t.integer  "dance_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "video"
    t.string   "callers_notes"
    t.integer  "number"
    t.integer  "section_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "number"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
