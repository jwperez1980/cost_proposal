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

ActiveRecord::Schema.define(version: 20170710183227) do

  create_table "client_contacts", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "nick_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "account_number"
    t.string   "site"
    t.string   "institution"
    t.integer  "post_office_box"
    t.string   "street_address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "zip_four"
    t.string   "phone"
    t.string   "email"
    t.integer  "state_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["state_id"], name: "index_clients_on_state_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "nickname"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.string   "description"
    t.decimal  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parts_for_proposals", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "frequency"
    t.integer  "quantity_per_visit"
    t.integer  "proposal_id"
    t.integer  "part_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["part_id"], name: "index_parts_for_proposals_on_part_id"
    t.index ["proposal_id"], name: "index_parts_for_proposals_on_proposal_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.integer  "client_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.string   "po_number"
    t.integer  "quote_number"
    t.date     "date_quoted"
    t.date     "date_needed"
    t.string   "ship_via"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_proposals_on_project_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "short"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
