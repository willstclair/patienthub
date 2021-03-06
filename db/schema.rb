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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130613232606) do

  create_table "categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "condition_categories", :force => true do |t|
    t.string   "condition_category_name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "conditions", :force => true do |t|
    t.string   "condition_name"
    t.integer  "condition_category_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "diagnoses", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "treatment_name"
    t.string   "condition_name"
    t.string   "user_name"
    t.integer  "condition_id"
    t.integer  "treatment_id"
    t.integer  "user_id"
  end

  create_table "treatment_categories", :force => true do |t|
    t.integer  "treatment_category_id"
    t.string   "treatment_category_name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "treatments", :force => true do |t|
    t.integer  "treatment_id"
    t.string   "treatment_name"
    t.integer  "treatment_category_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_type"
    t.integer  "zip_code"
    t.integer  "condition_id"
    t.string   "comments"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "treatment_id"
    t.string   "email"
  end

end
