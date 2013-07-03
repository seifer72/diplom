# -*- encoding : utf-8 -*-
class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.date :time_start
      t.date :time_end
      t.string :plan
      t.string :fact
      t.integer :work_plan_id

      t.timestamps
    end
  end
end
