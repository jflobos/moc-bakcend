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

ActiveRecord::Schema.define(version: 20160320144619) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activities", force: :cascade do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activities", ["lesson_id"], name: "index_activities_on_lesson_id"

  create_table "activity_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activity_tags", ["activity_id"], name: "index_activity_tags_on_activity_id"
  add_index "activity_tags", ["tag_id"], name: "index_activity_tags_on_tag_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "course_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_tags", ["course_id"], name: "index_course_tags_on_course_id"
  add_index "course_tags", ["tag_id"], name: "index_course_tags_on_tag_id"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "document_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "document_tags", ["document_id"], name: "index_document_tags_on_document_id"
  add_index "document_tags", ["tag_id"], name: "index_document_tags_on_tag_id"

  create_table "documents", force: :cascade do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "image_preview_file_name"
    t.string   "image_preview_content_type"
    t.integer  "image_preview_file_size"
    t.datetime "image_preview_updated_at"
  end

  add_index "documents", ["lesson_id"], name: "index_documents_on_lesson_id"

  create_table "lesson_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lesson_tags", ["lesson_id"], name: "index_lesson_tags_on_lesson_id"
  add_index "lesson_tags", ["tag_id"], name: "index_lesson_tags_on_tag_id"

  create_table "lessons", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "lessons", ["course_id"], name: "index_lessons_on_course_id"

  create_table "tags", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "video_tags", ["tag_id"], name: "index_video_tags_on_tag_id"
  add_index "video_tags", ["video_id"], name: "index_video_tags_on_video_id"

  create_table "videos", force: :cascade do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.text     "description"
    t.string   "video_url"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image_preview_file_name"
    t.string   "image_preview_content_type"
    t.integer  "image_preview_file_size"
    t.datetime "image_preview_updated_at"
  end

  add_index "videos", ["lesson_id"], name: "index_videos_on_lesson_id"

end
