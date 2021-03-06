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

ActiveRecord::Schema.define(version: 2022_02_11_235858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "topic_id"
    t.text "image"
    t.text "lawyer_signature"
    t.text "user_signature"
    t.text "user_name"
    t.text "lawyer_name"
    t.integer "type_id"
    t.integer "template_id"
    #lawyer_id and client_id
  end

  create_table "documents_users", force: :cascade do |t|
    t.integer "document_id"
    t.integer "user_id"
  end

  create_table "stageones", force: :cascade do |t|
    t.text "title"
    t.text "lawyer_signature"
    t.text "user_signature"
    t.text "user_name"
    t.text "lawyer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
  end

  create_table "templates", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.integer "topic_id"
    t.text "image"
    t.text "lawyer_signature"
    t.text "user_signature"
    t.text "user_name"
    t.text "lawyer_name"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.text "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
  end

end
