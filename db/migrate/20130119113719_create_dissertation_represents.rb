# -*- encoding : utf-8 -*-
class CreateDissertationRepresents < ActiveRecord::Migration
  def change
    create_table :dissertation_represents do |t|
      t.date :time_start
      t.date :time_end
      t.integer :scientific_work_id
      t.string :report

      t.timestamps
    end
  end
end
