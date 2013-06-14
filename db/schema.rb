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

ActiveRecord::Schema.define(:version => 20130121110908) do

  create_table "academic_works", :force => true do |t|
    t.integer  "general_plan_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "approbation_dissertations", :force => true do |t|
    t.integer  "dissertation_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "articles", :force => true do |t|
    t.integer  "approbation_dissertation_id"
    t.string   "content"
    t.date     "period"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "aspirants", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "mname"
    t.string   "cathedra"
    t.integer  "chief_id"
    t.integer  "index"
    t.date     "time_start"
    t.date     "time_end"
    t.string   "specialty"
    t.string   "direction"
    t.string   "theme"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "attestations", :force => true do |t|
    t.string   "content"
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "aspirant_id"
    t.integer  "chief_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "plan"
    t.integer  "fact"
    t.integer  "work_plan_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "chiefs", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "mname"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "defenses", :force => true do |t|
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "scientific_work_id"
    t.string   "report"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "design_dissertations", :force => true do |t|
    t.integer  "dissertation_id"
    t.string   "content"
    t.date     "period"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "plan"
    t.integer  "fact"
    t.integer  "work_plan_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "disciplines_studies", :force => true do |t|
    t.integer  "academic_work_id"
    t.string   "disciplin_name"
    t.date     "time_start"
    t.date     "time_end"
    t.string   "report"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "dissertation_represents", :force => true do |t|
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "scientific_work_id"
    t.string   "report"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "dissertations", :force => true do |t|
    t.integer  "aspirant_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exams", :force => true do |t|
    t.integer  "academic_work_id"
    t.string   "disciplin_name"
    t.date     "time_start"
    t.date     "time_end"
    t.string   "report"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "experiments", :force => true do |t|
    t.integer  "stages_work_id"
    t.string   "content"
    t.date     "time_start"
    t.date     "time_end"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "explanatory_nots", :force => true do |t|
    t.integer  "aspirant_id"
    t.string   "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "general_plans", :force => true do |t|
    t.integer  "aspirant_id"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "introduction_results", :force => true do |t|
    t.integer  "dissertation_id"
    t.string   "form"
    t.string   "organiz"
    t.date     "act"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "main_stages", :force => true do |t|
    t.integer  "introduction_result_id"
    t.string   "content"
    t.date     "time_start"
    t.date     "time_end"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "reports", :force => true do |t|
    t.integer  "approbation_dissertation_id"
    t.string   "content"
    t.date     "period"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "scientific_works", :force => true do |t|
    t.integer  "general_plan_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "scientific_works_for_plans", :force => true do |t|
    t.string   "name"
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "plan"
    t.integer  "fact"
    t.integer  "work_plan_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "second_works", :force => true do |t|
    t.date     "time_start"
    t.date     "time_end"
    t.integer  "scientific_work_id"
    t.string   "report"
    t.string   "work"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stages_works", :force => true do |t|
    t.integer  "dissertations_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "theoretical_parts", :force => true do |t|
    t.integer  "stages_work_id"
    t.string   "content"
    t.date     "time_start"
    t.date     "time_end"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                        :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "admin_per"
    t.integer  "aspirant_per"
    t.integer  "worker_per"
    t.integer  "chief_per"
    t.integer  "current_role"
    t.string   "name"
    t.integer  "aspirant_id"
    t.integer  "chief_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

  create_table "work_dissertations", :force => true do |t|
    t.string   "work"
    t.date     "time_start"
    t.date     "time_end"
    t.string   "report"
    t.integer  "scientific_work_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "work_plans", :force => true do |t|
    t.date     "per_start"
    t.date     "per_end"
    t.integer  "aspirant_id"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
