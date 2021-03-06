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

ActiveRecord::Schema.define(version: 20170124191538) do

  create_table "crews", force: :cascade do |t|
    t.integer  "tv_show_internal"
    t.integer  "episode_number"
    t.integer  "season_number"
    t.string   "name"
    t.string   "department"
    t.string   "job"
    t.string   "profile_path"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tv_show_episodes", force: :cascade do |t|
    t.integer  "tv_show_internal"
    t.string   "name"
    t.text     "overview"
    t.integer  "season_number"
    t.integer  "episode_number"
    t.string   "air_date"
    t.string   "still_path"
    t.string   "vote_average"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tv_show_seasons", force: :cascade do |t|
    t.integer  "tv_show_internal"
    t.string   "name"
    t.text     "overview"
    t.integer  "season_number"
    t.string   "air_date"
    t.string   "poster_path"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tv_shows", force: :cascade do |t|
    t.integer  "tv_show_internal"
    t.string   "name"
    t.text     "overview"
    t.string   "poster_path"
    t.string   "backdrop_path"
    t.integer  "number_of_seasons"
    t.integer  "number_of_episodes"
    t.string   "original_language"
    t.string   "homepage"
    t.string   "first_air_date"
    t.string   "last_air_date"
    t.string   "episode_run_time"
    t.string   "vote_average"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
