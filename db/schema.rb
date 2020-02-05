# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_04_211745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "action_name"
    t.string "action_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "campus_id", null: false
    t.bigint "place_id", null: false
    t.bigint "type_id", null: false
    t.bigint "area_id", null: false
    t.bigint "subarea_id", null: false
    t.bigint "action_id", null: false
    t.bigint "program_id", null: false
    t.bigint "subprogram_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "participants", default: [], array: true
    t.index ["action_id"], name: "index_activities_on_action_id"
    t.index ["area_id"], name: "index_activities_on_area_id"
    t.index ["campus_id"], name: "index_activities_on_campus_id"
    t.index ["place_id"], name: "index_activities_on_place_id"
    t.index ["program_id"], name: "index_activities_on_program_id"
    t.index ["subarea_id"], name: "index_activities_on_subarea_id"
    t.index ["subprogram_id"], name: "index_activities_on_subprogram_id"
    t.index ["type_id"], name: "index_activities_on_type_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "area_name"
    t.string "area_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.string "item"
    t.string "account"
    t.string "source"
    t.string "department"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campus", force: :cascade do |t|
    t.string "campus_name"
    t.string "campus_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "expense_type"
    t.string "client_type"
    t.string "name"
    t.string "bill_number"
    t.string "siaf_code"
    t.integer "amount"
    t.bigint "budget_id"
    t.text "description"
    t.datetime "date"
    t.bigint "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "petty_cash", default: false
    t.index ["activity_id"], name: "index_expenses_on_activity_id"
    t.index ["budget_id"], name: "index_expenses_on_budget_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "place_name"
    t.integer "capacity"
    t.bigint "campus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campus_id"], name: "index_places_on_campus_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "program_name"
    t.string "program_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subareas", force: :cascade do |t|
    t.string "subarea_name"
    t.string "subarea_code"
    t.bigint "area_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_subareas_on_area_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "short"
    t.string "code"
    t.string "hour"
    t.string "day"
    t.string "classroom"
    t.string "campus"
    t.string "credits"
    t.string "teacher_name"
    t.string "faculty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subprograms", force: :cascade do |t|
    t.string "subprogram_name"
    t.string "subprogram_code"
    t.bigint "program_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["program_id"], name: "index_subprograms_on_program_id"
  end

  create_table "transfers", force: :cascade do |t|
    t.integer "amount"
    t.text "description"
    t.bigint "sender_id", null: false
    t.bigint "receiver_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_transfers_on_receiver_id"
    t.index ["sender_id"], name: "index_transfers_on_sender_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "type_name"
    t.string "type_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "actions"
  add_foreign_key "activities", "areas"
  add_foreign_key "activities", "campus", column: "campus_id"
  add_foreign_key "activities", "places"
  add_foreign_key "activities", "programs"
  add_foreign_key "activities", "subareas"
  add_foreign_key "activities", "subprograms"
  add_foreign_key "activities", "types"
  add_foreign_key "expenses", "activities"
  add_foreign_key "places", "campus", column: "campus_id"
end
