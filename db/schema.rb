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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_153519) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.integer "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "zipcode"
    t.string "city"
    t.string "state"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "annotations", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "section_id", null: false
    t.integer "lesson_id", null: false
    t.text "body"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_annotations_on_course_id"
    t.index ["lesson_id"], name: "index_annotations_on_lesson_id"
    t.index ["section_id"], name: "index_annotations_on_section_id"
    t.index ["user_id"], name: "index_annotations_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "thumbnail"
    t.string "title"
    t.text "body"
    t.string "slug"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
    t.integer "category_id", null: false
    t.datetime "discarded_at"
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "certificates", force: :cascade do |t|
    t.date "completion_date"
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_certificates_on_course_id"
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "course_members", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "done", default: false
    t.index ["course_id"], name: "index_course_members_on_course_id"
    t.index ["user_id"], name: "index_course_members_on_user_id"
  end

  create_table "course_teachers", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_teachers_on_course_id"
    t.index ["teacher_id"], name: "index_course_teachers_on_teacher_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover"
    t.string "slug"
    t.datetime "discarded_at"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "video_path"
    t.integer "section_id", null: false
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "level"
    t.index ["course_id"], name: "index_lessons_on_course_id"
    t.index ["section_id"], name: "index_lessons_on_section_id"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "picture"
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birthdate"
    t.integer "gender"
    t.string "slug"
    t.string "phone"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "saved_lessons", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_saved_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_saved_lessons_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["user_id"], name: "index_sections_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "avatar"
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.datetime "discarded_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "users"
  add_foreign_key "annotations", "courses"
  add_foreign_key "annotations", "lessons"
  add_foreign_key "annotations", "sections"
  add_foreign_key "annotations", "users"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "users"
  add_foreign_key "categories", "users"
  add_foreign_key "certificates", "courses"
  add_foreign_key "certificates", "users"
  add_foreign_key "course_members", "courses"
  add_foreign_key "course_members", "users"
  add_foreign_key "course_teachers", "courses"
  add_foreign_key "course_teachers", "teachers"
  add_foreign_key "courses", "users"
  add_foreign_key "lessons", "courses"
  add_foreign_key "lessons", "sections"
  add_foreign_key "lessons", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "saved_lessons", "lessons"
  add_foreign_key "saved_lessons", "users"
  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "users"
end
