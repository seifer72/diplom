# -*- encoding : utf-8 -*-
class CreateSecondWorks < ActiveRecord::Migration
  def change
    create_table :second_works do |t|
      t.date :time_start
      t.date :time_end
      t.integer :scientific_work_id
      t.string :report
      t.string :work

      t.timestamps
    end
  end
end
