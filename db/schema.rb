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

ActiveRecord::Schema.define(version: 2021_03_19_014944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "video_url"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workout_id"
    t.index ["category_id"], name: "index_exercises_on_category_id"
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "athlete_id"
    t.index ["athlete_id"], name: "index_workouts_on_athlete_id"
  end

  add_foreign_key "exercises", "categories"
  add_foreign_key "exercises", "workouts"
  add_foreign_key "workouts", "athletes"
end
