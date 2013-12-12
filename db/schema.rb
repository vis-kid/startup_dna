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

ActiveRecord::Schema.define(version: 20131212155133) do

  create_table "interviewees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter_handle"
    t.string   "weblink"
    t.text     "about_text"
    t.string   "user_pic_file_name"
    t.string   "user_pic_content_type"
    t.integer  "user_pic_file_size"
    t.datetime "user_pic_updated_at"
  end

  add_index "interviewees", ["name"], name: "index_interviewees_on_name"
  add_index "interviewees", ["twitter_handle"], name: "index_interviewees_on_twitter_handle"
  add_index "interviewees", ["weblink"], name: "index_interviewees_on_weblink"

  create_table "videos", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "quote"
    t.string   "youtube_id"
    t.string   "vimeo_id"
    t.integer  "interviewee_id"
  end

  add_index "videos", ["interviewee_id"], name: "index_videos_on_interviewee_id"
  add_index "videos", ["vimeo_id"], name: "index_videos_on_vimeo_id"
  add_index "videos", ["youtube_id"], name: "index_videos_on_youtube_id"

end
