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

ActiveRecord::Schema.define(version: 2018_06_26_114348) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "archive_entry_couriers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "entry_courier_id"
    t.text "description"
    t.string "name"
    t.string "reference"
    t.string "file", default: "--- []\n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["entry_courier_id"], name: "index_archive_entry_couriers_on_entry_courier_id"
    t.index ["user_id"], name: "index_archive_entry_couriers_on_user_id"
  end

  create_table "archive_projects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.text "description"
    t.string "name"
    t.string "reference"
    t.string "file", default: "--- []\n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["project_id"], name: "index_archive_projects_on_project_id"
    t.index ["user_id"], name: "index_archive_projects_on_user_id"
  end

  create_table "archive_release_couriers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "release_courier_id"
    t.text "description"
    t.string "name"
    t.string "reference"
    t.string "file", default: "--- []\n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["release_courier_id"], name: "index_archive_release_couriers_on_release_courier_id"
    t.index ["user_id"], name: "index_archive_release_couriers_on_user_id"
  end

  create_table "entry_couriers", force: :cascade do |t|
    t.string "reference"
    t.text "subject"
    t.string "sender"
    t.string "receveir"
    t.date "duration"
    t.date "sentDate"
    t.string "orderNumber"
    t.string "file", default: "--- []\n"
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["project_id"], name: "index_entry_couriers_on_project_id"
    t.index ["user_id"], name: "index_entry_couriers_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_phases", force: :cascade do |t|
    t.string "document", default: "--- []\n"
    t.string "phase"
    t.text "description"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "document_file_name"
    t.string "document_content_type"
    t.integer "document_file_size"
    t.datetime "document_updated_at"
    t.index ["project_id"], name: "index_project_phases_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "reference"
    t.date "duration"
    t.string "amount"
    t.string "public_partenership"
    t.string "private_partenership"
    t.string "project_situation"
    t.string "focal_point"
    t.string "object_project"
    t.string "procedure"
    t.string "contratDuration"
    t.string "projectName"
    t.string "secteurActivite"
    t.string "projectDescription"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "release_couriers", force: :cascade do |t|
    t.date "date"
    t.string "destination"
    t.string "reference"
    t.string "orderNumber"
    t.integer "project_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_release_couriers_on_project_id"
    t.index ["user_id"], name: "index_release_couriers_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lName"
    t.string "fName"
    t.string "adress"
    t.string "phone"
    t.string "registration_number"
    t.integer "kind"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
