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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_213408) do
  create_table "documents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "flash_card_sets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "document_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_flash_card_sets_on_document_id"
    t.index ["user_id"], name: "index_flash_card_sets_on_user_id"
  end

  create_table "flash_cards", force: :cascade do |t|
    t.integer "flash_card_set_id", null: false
    t.text "front"
    t.text "back"
    t.boolean "hidden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flash_card_set_id"], name: "index_flash_cards_on_flash_card_set_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "documents", "users"
  add_foreign_key "flash_card_sets", "documents"
  add_foreign_key "flash_card_sets", "users"
  add_foreign_key "flash_cards", "flash_card_sets"
end
