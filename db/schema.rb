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

ActiveRecord::Schema[7.0].define(version: 2023_10_25_125708) do
  create_table "channels", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.date "feedback_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infis", force: :cascade do |t|
    t.string "num"
    t.string "nom"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kines", force: :cascade do |t|
    t.string "nom"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "telephone"
    t.string "rue"
    t.string "numero"
    t.string "ville"
    t.integer "niss"
    t.string "contact"
    t.string "lien"
    t.string "tel_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subchannels", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_id", null: false
    t.index ["channel_id"], name: "index_subchannels_on_channel_id"
  end

  add_foreign_key "subchannels", "channels"
end
