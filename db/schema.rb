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

ActiveRecord::Schema.define(:version => 20130818075202) do

  create_table "comics", :force => true do |t|
    t.text "writers"
    t.text "title"
    t.text "publisher"
    t.text "turn"
    t.text "price"
    t.text "identification"
    t.text "sale"
    t.text "link"
    t.text "img"
    t.text "content"
  end

  create_table "yondas", :force => true do |t|
    t.integer  "user"
    t.text     "comment"
    t.integer  "comic_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "yondas", ["comic_id"], :name => "index_yondas_on_comic_id"

end
