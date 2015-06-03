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

ActiveRecord::Schema.define(version: 20150603121349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prisoners", force: :cascade do |t|
    t.string   "prisoner_name"
    t.string   "prisoner_number"
    t.date     "prisoner_dob"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "prisoners", ["prisoner_dob"], name: "index_prisoners_on_prisoner_dob", using: :btree
  add_index "prisoners", ["prisoner_name"], name: "index_prisoners_on_prisoner_name", using: :btree
  add_index "prisoners", ["prisoner_number"], name: "index_prisoners_on_prisoner_number", using: :btree

end
