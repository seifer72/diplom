# -*- encoding : utf-8 -*-
class CreateDisciplinesStudies < ActiveRecord::Migration
  def change
    create_table :disciplines_studies do |t|
      t.integer :academic_work_id
      t.string :disciplin_name
      t.date :time_start
      t.date :time_end
      t.string :report

      t.timestamps
    end
  end
end
