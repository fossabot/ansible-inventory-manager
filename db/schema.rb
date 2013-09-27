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

ActiveRecord::Schema.define(version: 20130925144907) do

  create_table "group_hosts", force: true do |t|
    t.integer  "host_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "variables",    default: "{}"
    t.integer  "group_id"
    t.integer  "inventory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["name", "group_id", "inventory_id"], name: "index_groups_on_name_and_group_id_and_inventory_id"

  create_table "hosts", force: true do |t|
    t.string   "alias"
    t.text     "description"
    t.text     "variables",    default: "{}"
    t.integer  "inventory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hosts", ["alias", "inventory_id"], name: "index_hosts_on_alias_and_inventory_id"

  create_table "identities", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end