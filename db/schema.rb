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

ActiveRecord::Schema.define(version: 20150125030526) do

  create_table "hopitals", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name_patient"
    t.string   "phone_patient"
    t.string   "email_patient"
    t.string   "department_patient"
    t.integer  "age_patient"
    t.string   "address_patient"
    t.string   "hopital_patient"
    t.datetime "time_patient"
    t.text     "description_patient"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approve_doctor"
  end

end
