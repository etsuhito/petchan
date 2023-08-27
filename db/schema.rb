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

ActiveRecord::Schema[7.0].define(version: 2023_08_24_191408) do
  create_table "basics", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "pet_name", null: false
    t.string "species_id", null: false
    t.integer "breed_id", null: false
    t.integer "gender_id", null: false
    t.date "color", null: false
    t.date "birthday", null: false
    t.integer "adoption_date", null: false
    t.integer "preferred_veterinary_clinic", null: false
    t.boolean "neutered", null: false
    t.text "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_basics_on_user_id"
  end

  create_table "particulars", charset: "utf8", force: :cascade do |t|
    t.bigint "basic_id", null: false
    t.date "date_of_rescue", null: false
    t.string "location", null: false
    t.string "situation", null: false
    t.string "handling_treatment", null: false
    t.string "medical_history_allergies", null: false
    t.string "fleas_and_ticks", null: false
    t.string "vaccinations", null: false
    t.string "medication1", null: false
    t.string "medication2", null: false
    t.string "personality", null: false
    t.string "champions", null: false
    t.string "co_residing_humans", null: false
    t.string "co_residing_animals", null: false
    t.string "food_type", null: false
    t.string "daily_food_amount", null: false
    t.string "frequency_of_meals", null: false
    t.string "toilet_environment", null: false
    t.string "exercise_level_id", null: false
    t.string "walking_distance_and_frequency"
    t.string "grooming", null: false
    t.string "favorite_food", null: false
    t.string "likes"
    t.string "favorite_places", null: false
    t.string "special_considerations", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basic_id"], name: "index_particulars_on_basic_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "date_of_birth", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "basics", "users"
  add_foreign_key "particulars", "basics"
end
