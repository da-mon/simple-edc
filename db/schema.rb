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

ActiveRecord::Schema.define(version: 20160425153921) do

  create_table "centres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "form_id"
    t.integer  "event_id"
  end

  add_index "event_forms", ["event_id"], name: "index_event_forms_on_event_id"
  add_index "event_forms", ["form_id"], name: "index_event_forms_on_form_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "study_id"
  end

  add_index "events", ["study_id"], name: "index_events_on_study_id"

  create_table "field_validations", force: :cascade do |t|
    t.integer "field_id"
    t.text "created_at", null: false
    t.text "updated_at", null: false
    t.integer "connector"
    t.integer "operator"
    t.text "operand"
  end

  create_table "field_values", force: :cascade do |t|
    t.integer  "field_id"
    t.string "label"
    t.string "field_value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "field_values", ["field_id"], name: "index_field_values_on_field_id"

  create_table "fields", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "form_id"
    t.string   "label"
    t.integer  "field_type"
    t.boolean  "required"
    t.integer  "format"
    t.string "number"
    t.string "name"
  end

  add_index "fields", ["form_id"], name: "index_fields_on_form_id"

  create_table "form_condition_conditions", force: :cascade do |t|
    t.integer "form_condition_id"
    t.integer "field_id"
    t.integer "connector"
    t.integer "operator"
    t.string "operand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "form_condition_conditions", ["field_id"], name: "index_form_condition_conditions_on_field_id"
  add_index "form_condition_conditions", ["form_condition_id"], name: "index_form_condition_conditions_on_form_condition_id"

  create_table "form_condition_fields", force: :cascade do |t|
    t.integer "form_condition_id"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "form_condition_fields", ["field_id"], name: "index_form_condition_fields_on_field_id"
  add_index "form_condition_fields", ["form_condition_id"], name: "index_form_condition_fields_on_form_condition_id"

  create_table "form_conditions", force: :cascade do |t|
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "field_id"
  end

  add_index "form_conditions", ["field_id"], name: "index_form_conditions_on_field_id"
  add_index "form_conditions", ["form_id"], name: "index_form_conditions_on_form_id"

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "study_id"
  end

  add_index "forms", ["study_id"], name: "index_forms_on_study_id"

  create_table "participant_event_form_fields", force: :cascade do |t|
    t.integer  "participant_event_form_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "field_id"
    t.string   "field_value"
  end

  add_index "participant_event_form_fields", ["field_id"], name: "index_participant_event_form_fields_on_field_id"
  add_index "participant_event_form_fields", ["participant_event_form_id"], name: "index_peff_on_pef_id"

  create_table "participant_event_forms", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "event_form_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "participant_event_forms", ["event_form_id"], name: "index_participant_event_forms_on_event_form_id"
  add_index "participant_event_forms", ["participant_id"], name: "index_participant_event_forms_on_participant_id"

  create_table "participants", force: :cascade do |t|
    t.string   "participant_identifier"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "study_id"
  end

  add_index "participants", ["study_id"], name: "index_participants_on_study_id"

  create_table "studies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "study_centres", force: :cascade do |t|
    t.integer "study_id"
    t.integer "centre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "study_centres", ["centre_id"], name: "index_study_centres_on_centre_id"
  add_index "study_centres", ["study_id"], name: "index_study_centres_on_study_id"

  create_table "study_users", force: :cascade do |t|
    t.integer  "study_id",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
