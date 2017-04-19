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

ActiveRecord::Schema.define(version: 20170419114456) do

  create_table "articles", force: :cascade do |t|
    t.string   "key"
    t.text     "author"
    t.text     "title"
    t.text     "journal"
    t.integer  "year"
    t.integer  "volume"
    t.integer  "number"
    t.string   "pages"
    t.integer  "month"
    t.text     "note"
    t.text     "publisher"
    t.text     "series"
    t.text     "address"
    t.text     "edition"
    t.text     "booktitle"
    t.text     "editor"
    t.text     "organization"
    t.string   "entry_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bibtexes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "key"
    t.text     "author"
    t.text     "title"
    t.text     "journal"
    t.integer  "year"
    t.integer  "volume"
    t.integer  "number"
    t.string   "pages"
    t.integer  "month"
    t.text     "note"
    t.text     "publisher"
    t.text     "series"
    t.text     "address"
    t.text     "edition"
    t.text     "booktitle"
    t.text     "editor"
    t.text     "organization"
    t.string   "entry_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "inproceedings", force: :cascade do |t|
    t.string   "key"
    t.text     "author"
    t.text     "title"
    t.text     "journal"
    t.integer  "year"
    t.integer  "volume"
    t.integer  "number"
    t.string   "pages"
    t.integer  "month"
    t.text     "note"
    t.text     "publisher"
    t.text     "series"
    t.text     "address"
    t.text     "edition"
    t.text     "booktitle"
    t.text     "editor"
    t.text     "organization"
    t.string   "entry_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "references", force: :cascade do |t|
    t.string   "key"
    t.text     "author"
    t.text     "title"
    t.text     "journal"
    t.integer  "year"
    t.integer  "volume"
    t.integer  "number"
    t.string   "pages"
    t.integer  "month"
    t.text     "note"
    t.text     "publisher"
    t.text     "series"
    t.text     "address"
    t.text     "edition"
    t.text     "booktitle"
    t.text     "editor"
    t.text     "organization"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "entry_type"
  end

end
