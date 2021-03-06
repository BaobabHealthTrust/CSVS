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

ActiveRecord::Schema.define(:version => 20131102131945) do

  create_table "issues", :primary_key => "issue_id", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :primary_key => "service_id", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",        :default => "",  :null => false
    t.string   "hashed_password", :default => "",  :null => false
    t.string   "first_name",      :default => "",  :null => false
    t.string   "last_name",       :default => "",  :null => false
    t.string   "display_name",    :default => "",  :null => false
    t.string   "user_level",      :default => "0", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vote_issues", :id => false, :force => true do |t|
    t.integer  "vote_id",    :default => 0, :null => false
    t.integer  "issue_id",   :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vote_types", :primary_key => "vote_type_id", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", :primary_key => "vote_id", :force => true do |t|
    t.string   "client_id"
    t.integer  "vote_type_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
