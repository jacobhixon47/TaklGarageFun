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

ActiveRecord::Schema.define(version: 20170802204521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "car_models", force: :cascade do |t|
    t.integer  "manufacturer_id", null: false
    t.string   "name",            null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["manufacturer_id"], name: "index_car_models_on_manufacturer_id", using: :btree
  end

  create_table "cars", force: :cascade do |t|
    t.integer  "car_model_id",                null: false
    t.string   "vin",                         null: false
    t.integer  "mileage",         default: 0, null: false
    t.string   "color"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id"
    t.integer  "manufacturer_id"
    t.integer  "year",            default: 0, null: false
    t.integer  "garage_id"
    t.index ["car_model_id"], name: "index_cars_on_car_model_id", using: :btree
    t.index ["garage_id"], name: "index_cars_on_garage_id", using: :btree
    t.index ["manufacturer_id"], name: "index_cars_on_manufacturer_id", using: :btree
    t.index ["user_id"], name: "index_cars_on_user_id", using: :btree
  end

  create_table "garages", force: :cascade do |t|
    t.string   "name"
    t.integer  "limit",      default: 0,     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "full",       default: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "car_models", "manufacturers"
  add_foreign_key "cars", "car_models"
  add_foreign_key "cars", "garages"
  add_foreign_key "cars", "manufacturers"
  add_foreign_key "cars", "users"
end
