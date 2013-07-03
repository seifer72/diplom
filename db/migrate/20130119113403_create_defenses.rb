# -*- encoding : utf-8 -*-
class CreateDefenses < ActiveRecord::Migration
  def change
    create_table :defenses do |t|
      t.date :time_start
      t.date :time_end
      t.integer :scientific_work_id
      t.string :report

      t.timestamps
    end
  end
end
