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

ActiveRecord::Schema.define(version: 20150526183303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer  "artist_id",                null: false
    t.string   "title",        limit: 256, null: false
    t.string   "release_year"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "artist_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artist_genres", ["artist_id"], name: "index_artist_genres_on_artist_id", using: :btree
  add_index "artist_genres", ["genre_id"], name: "index_artist_genres_on_genre_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.integer  "record_label_id"
    t.string   "stage_name",      null: false
    t.string   "birth_name"
    t.integer  "age",             null: false
    t.text     "description",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",        limit: 100, null: false
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "record_labels", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "founding_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "artist_id",              null: false
    t.integer  "album_id",               null: false
    t.string   "title",      limit: 256, null: false
    t.text     "lyrics"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree

end
