# -*- encoding : utf-8 -*-
class CreateWorkDissertations < ActiveRecord::Migration
  def change
    create_table :work_dissertations do |t|
      t.string :work
      t.date :time_start
      t.date :time_end
      t.string :report
      t.integer :scientific_work_id

      t.timestamps
    end
  end
end
