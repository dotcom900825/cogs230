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

ActiveRecord::Schema.define(version: 20131120214457) do

  create_table "login_counts", force: true do |t|
    t.integer  "esl_count",    default: 0
    t.integer  "native_count", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "papers", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "not_collaborative_url"
  end

  create_table "questions", force: true do |t|
    t.string   "problem1"
    t.string   "problem2"
    t.string   "problem3"
    t.string   "problem4"
    t.integer  "solution"
    t.integer  "answer"
    t.integer  "paper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "question"
  end

  create_table "student_answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "answer"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_papers", force: true do |t|
    t.integer  "user_id"
    t.integer  "paper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "reading_time"
  end

  create_table "users", force: true do |t|
    t.string   "username",         null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "use_system"
  end

end
