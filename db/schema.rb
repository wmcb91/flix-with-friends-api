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

ActiveRecord::Schema.define(version: 20161109142238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "director"
    t.integer  "year_released"
    t.string   "genre"
    t.decimal  "imdb_rating",           precision: 4, scale: 1
    t.integer  "critic_tomato_meter"
    t.integer  "critic_reviews"
    t.integer  "audience_tomato_score"
    t.integer  "audience_reviews"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "rating"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "given_name"
    t.string   "surname"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "queued_films", force: :cascade do |t|
    t.integer  "order_rank"
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "queued_films", ["movie_id"], name: "index_queued_films_on_movie_id", using: :btree
  add_index "queued_films", ["user_id"], name: "index_queued_films_on_user_id", using: :btree

  create_table "screenings", force: :cascade do |t|
    t.boolean  "watched_recently"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_rating"
  end

  add_index "screenings", ["movie_id"], name: "index_screenings_on_movie_id", using: :btree
  add_index "screenings", ["user_id"], name: "index_screenings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "queued_films", "movies"
  add_foreign_key "queued_films", "users"
  add_foreign_key "screenings", "movies"
  add_foreign_key "screenings", "users"
end
