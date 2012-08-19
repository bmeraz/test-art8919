# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120817200919) do

  create_table "artifact_notes", :force => true do |t|
    t.datetime "ts"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artifacts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "year"
    t.integer  "artist_id"
    t.integer  "medium_id"
    t.integer  "notes_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions", :force => true do |t|
    t.integer  "artifact_id"
    t.string   "dim_type"
    t.string   "dim_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media_attributes", :force => true do |t|
    t.integer  "media_id"
    t.string   "attr_name"
    t.text     "attr_desc"
    t.string   "media_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", :force => true do |t|
    t.integer  "artifact_id"
    t.string   "media_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.integer  "artifact_id"
    t.string   "price_type"
    t.text     "price_description"
    t.string   "price_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
