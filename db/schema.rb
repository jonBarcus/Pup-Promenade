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

ActiveRecord::Schema.define(version: 20140512201553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boros", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breeds", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "age"
    t.integer  "sex_id"
    t.integer  "breed_id"
    t.integer  "size_id"
    t.string   "temperment"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.integer  "boro_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owner_profiles", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "dog_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexes", force: true do |t|
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.text     "skill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.string   "image_url"
    t.boolean  "admin",           default: false
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type"
  end

  create_table "walker_profiles", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "dog_id"
    t.integer  "skill_id"
    t.integer  "recommendation_id"
    t.integer  "walker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
