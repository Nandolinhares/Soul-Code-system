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

ActiveRecord::Schema.define(version: 20171017214412) do

  create_table "addresses", force: :cascade do |t|
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "neighborhood"
    t.string   "street"
    t.string   "number"
    t.integer  "client_id"
    t.integer  "member_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id"
  add_index "addresses", ["member_id"], name: "index_addresses_on_member_id"

  create_table "categorizations", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categorizations", ["member_id"], name: "index_categorizations_on_member_id"
  add_index "categorizations", ["project_id"], name: "index_categorizations_on_project_id"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "company_name"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone"
    t.string   "email"
    t.integer  "status"
    t.date     "birthday"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "photo"
    t.string   "document_one"
    t.string   "document_two"
    t.string   "document_three"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone"
    t.string   "email"
    t.integer  "department_id"
    t.integer  "project_id"
    t.string   "scrum"
    t.string   "position"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "photo"
    t.string   "document_one"
    t.string   "document_two"
  end

  add_index "members", ["department_id"], name: "index_members_on_department_id"
  add_index "members", ["project_id"], name: "index_members_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "sale_date"
    t.date     "deadline"
    t.string   "company_name"
    t.string   "phone"
    t.integer  "status"
    t.integer  "client_id"
    t.text     "cliente_note"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "member_id"
  end

  add_index "projects", ["client_id"], name: "index_projects_on_client_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "kind"
    t.integer  "status"
    t.text     "notes"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
