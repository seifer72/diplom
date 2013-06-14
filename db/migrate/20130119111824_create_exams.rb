# -*- encoding : utf-8 -*-
class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :academic_work_id
      t.string :disciplin_name
      t.date :time_start
      t.date :time_end
      t.string :report

      t.timestamps
    end
  end
end
