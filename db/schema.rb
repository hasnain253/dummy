# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_03_074000) do
  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "physician_id"
    t.integer "hospital_id"
    t.datetime "appointment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_appointments_on_hospital_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals_nurses", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "nurse_id"
    t.index ["hospital_id"], name: "index_hospitals_nurses_on_hospital_id"
    t.index ["nurse_id"], name: "index_hospitals_nurses_on_nurse_id"
  end

  create_table "nurses", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.integer "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "hospital_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_patients_on_hospital_id"
  end

  create_table "physicians", force: :cascade do |t|
    t.integer "hospital_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_physicians_on_hospital_id"
  end

  create_table "receptions", force: :cascade do |t|
    t.integer "hospital_id"
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_receptions_on_hospital_id"
  end

  add_foreign_key "appointments", "hospitals"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "hospitals_nurses", "hospitals"
  add_foreign_key "hospitals_nurses", "nurses"
  add_foreign_key "patients", "hospitals"
  add_foreign_key "physicians", "hospitals"
  add_foreign_key "receptions", "hospitals"
end
