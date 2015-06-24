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

ActiveRecord::Schema.define(version: 0) do

  create_table "beers", force: true do |t|
    t.integer  "brewery_id", default: 0,   null: false
    t.string   "name",       default: "",  null: false
    t.integer  "cat_id",     default: 0,   null: false
    t.integer  "style_id",   default: 0,   null: false
    t.float    "abv",        default: 0.0, null: false
    t.float    "ibu",        default: 0.0, null: false
    t.float    "srm",        default: 0.0, null: false
    t.integer  "upc",        default: 0,   null: false
    t.string   "filepath",   default: "",  null: false
    t.text     "descript",                 null: false
    t.integer  "add_user",   default: 0,   null: false
    t.datetime "last_mod",                 null: false
  end

  create_table "breweries", force: true do |t|
    t.string   "name",                default: "", null: false
    t.string   "address1",            default: "", null: false
    t.string   "address2",            default: "", null: false
    t.string   "city",                default: "", null: false
    t.string   "state",               default: "", null: false
    t.string   "code",     limit: 25, default: "", null: false
    t.string   "country",             default: "", null: false
    t.string   "phone",    limit: 50, default: "", null: false
    t.string   "website",             default: "", null: false
    t.string   "filepath",            default: "", null: false
    t.text     "descript",                         null: false
    t.integer  "add_user",            default: 0,  null: false
    t.datetime "last_mod",                         null: false
  end

  create_table "categories", force: true do |t|
    t.string   "cat_name", default: "", null: false
    t.datetime "last_mod",              null: false
  end

  create_table "styles", force: true do |t|
    t.integer  "cat_id",     default: 0,  null: false
    t.string   "style_name", default: "", null: false
    t.datetime "last_mod",                null: false
  end

end
