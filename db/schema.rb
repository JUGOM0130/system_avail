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

ActiveRecord::Schema[7.0].define(version: 2022_11_15_035916) do
  create_table "accounts", force: :cascade do |t|
    t.string "user_cd"
    t.string "user_name"
    t.string "account_id"
    t.string "password"
    t.string "biko1"
    t.string "biko2"
    t.string "biko3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind"
  end

  create_table "kengens", force: :cascade do |t|
    t.string "user_cd"
    t.string "k_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "masta_toris", force: :cascade do |t|
    t.string "tcd"
    t.string "tname"
    t.string "tnname"
    t.string "tyubin_no"
    t.string "tjusho1"
    t.string "tjusho2"
    t.string "tjusho3"
    t.string "tjusho4"
    t.string "tjusho5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "masta_users", force: :cascade do |t|
    t.string "cd"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "nohinshos", force: :cascade do |t|
    t.datetime "ndate"
    t.string "nno"
    t.string "nhinname"
    t.integer "suryo"
    t.integer "tanka"
    t.integer "kingaku"
    t.decimal "taxingaku"
    t.string "tekiyo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tori_cd"
  end

  create_table "numbering_managements", force: :cascade do |t|
    t.integer "index"
    t.string "koumoku_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
