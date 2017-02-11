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

ActiveRecord::Schema.define(version: 20170211105106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.text     "story"
    t.string   "location"
    t.text     "ksf"
    t.integer  "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "pitch"
    t.text     "context"
    t.text     "goal"
    t.text     "mission"
    t.text     "vision"
    t.text     "values"
    t.string   "logo"
    t.string   "website"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objectives", force: :cascade do |t|
    t.text     "specific"
    t.text     "measurable"
    t.text     "achievable"
    t.text     "realistic"
    t.text     "timed"
    t.integer  "segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.string   "role"
    t.text     "jobs"
    t.text     "pains"
    t.text     "gains"
    t.text     "touch_points"
    t.text     "quotes"
    t.text     "story"
    t.integer  "age",                  default: 0
    t.integer  "income",               default: 0
    t.integer  "education",            default: 0
    t.string   "location"
    t.integer  "value_proposition_id"
    t.integer  "segment_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "pocs", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "role"
    t.string   "img"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "telephone"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "size",        default: 0
    t.integer  "growth",      default: 0
    t.integer  "company_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "strategies", force: :cascade do |t|
    t.text     "description"
    t.text     "ksf"
    t.integer  "objective_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tactics", force: :cascade do |t|
    t.text     "description"
    t.string   "medium"
    t.integer  "importance",  default: 0
    t.string   "frequency"
    t.datetime "start"
    t.datetime "end"
    t.string   "kpi"
    t.integer  "budget"
    t.integer  "strategy_id"
    t.integer  "poc_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "value_propositions", force: :cascade do |t|
    t.text     "product_service"
    t.integer  "price"
    t.text     "promotion"
    t.text     "place"
    t.text     "gain_creator"
    t.text     "pain_reliever"
    t.text     "differentiation"
    t.integer  "company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
