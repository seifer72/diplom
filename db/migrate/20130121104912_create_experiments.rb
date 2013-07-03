# -*- encoding : utf-8 -*-
class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :stages_work_id
      t.string :content
      t.date :time_start
      t.date :time_end

      t.timestamps
    end
  end
end
