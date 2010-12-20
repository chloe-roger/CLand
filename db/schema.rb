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

ActiveRecord::Schema.define(:version => 20101218101740) do

  create_table "billets", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", :force => true do |t|
    t.text     "description"
    t.string   "image_url"
    t.integer  "sphere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histoires", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.integer  "sphere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histoires_personnages", :id => false, :force => true do |t|
    t.integer "histoire_id",   :null => false
    t.integer "personnage_id", :null => false
  end

  add_index "histoires_personnages", ["histoire_id", "personnage_id"], :name => "index_histoires_personnages_on_histoire_id_and_personnage_id", :unique => true
  add_index "histoires_personnages", ["histoire_id"], :name => "index_histoires_personnages_on_histoire_id"
  add_index "histoires_personnages", ["personnage_id"], :name => "index_histoires_personnages_on_personnage_id"

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
  end

  create_table "personnages", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sphere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spheres", :force => true do |t|
    t.string   "title"
    t.string   "image_url"
    t.integer  "description_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
