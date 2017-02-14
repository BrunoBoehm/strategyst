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

ActiveRecord::Schema.define(version: 20170214085302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.datetime "timed"
    t.integer  "segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  add_index "objectives", ["segment_id"], name: "index_objectives_on_segment_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.string   "role"
    t.text     "jobs"
    t.text     "pains"
    t.text     "gains"
    t.text     "touch_points"
    t.text     "quotes"
    t.integer  "age",                  default: 0
    t.integer  "income",               default: 0
    t.integer  "education",            default: 0
    t.string   "location"
    t.text     "story"
    t.integer  "value_proposition_id"
    t.integer  "segment_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "personas", ["segment_id"], name: "index_personas_on_segment_id", using: :btree
  add_index "personas", ["value_proposition_id"], name: "index_personas_on_value_proposition_id", using: :btree

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

  add_index "pocs", ["company_id"], name: "index_pocs_on_company_id", using: :btree

  create_table "segments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "size",        default: 0
    t.integer  "growth",      default: 0
    t.integer  "company_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "segments", ["company_id"], name: "index_segments_on_company_id", using: :btree

  create_table "strategies", force: :cascade do |t|
    t.string   "pitch"
    t.text     "description"
    t.text     "ksf"
    t.integer  "objective_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "strategies", ["objective_id"], name: "index_strategies_on_objective_id", using: :btree

  create_table "tactics", force: :cascade do |t|
    t.string   "pitch"
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

  add_index "tactics", ["poc_id"], name: "index_tactics_on_poc_id", using: :btree
  add_index "tactics", ["strategy_id"], name: "index_tactics_on_strategy_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

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
    t.string   "name"
  end

  add_index "value_propositions", ["company_id"], name: "index_value_propositions_on_company_id", using: :btree

  add_foreign_key "objectives", "segments"
  add_foreign_key "personas", "segments"
  add_foreign_key "personas", "value_propositions"
  add_foreign_key "pocs", "companies"
  add_foreign_key "segments", "companies"
  add_foreign_key "strategies", "objectives"
  add_foreign_key "tactics", "pocs"
  add_foreign_key "tactics", "strategies"
  add_foreign_key "value_propositions", "companies"
end
