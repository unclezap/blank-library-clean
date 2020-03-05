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

ActiveRecord::Schema.define(version: 2020_03_05_002906) do

  create_table "books", force: :cascade do |t|
    t.integer "shelf_id"
    t.integer "user_id"
    t.string "spine"
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "x_axis"
    t.integer "z_axis"
  end

  create_table "lines", force: :cascade do |t|
    t.integer "page_id"
    t.string "text"
  end

  create_table "pages", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "text"
  end

  create_table "shelves", force: :cascade do |t|
    t.integer "wall_id"
  end

  create_table "shuttles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gallery_id"
    t.integer "wall_id"
    t.integer "shelf_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

  create_table "walls", force: :cascade do |t|
    t.integer "gallery_id"
  end

end
