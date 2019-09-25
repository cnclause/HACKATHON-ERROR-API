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

ActiveRecord::Schema.define(version: 2019_09_24_195127) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "connection"
    t.string "quote"
    t.integer "trial_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trial_id"], name: "index_characters_on_trial_id"
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "item_name"
    t.string "category"
    t.string "description"
    t.string "photo_one"
    t.string "photo_two"
    t.string "photo_three"
    t.integer "trial_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trial_id"], name: "index_exhibits_on_trial_id"
  end

  create_table "trials", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "trials"
  add_foreign_key "exhibits", "trials"
end
