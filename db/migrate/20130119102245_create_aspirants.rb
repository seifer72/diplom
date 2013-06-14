# -*- encoding : utf-8 -*-
class CreateAspirants < ActiveRecord::Migration
  def change
    create_table :aspirants do |t|
      t.string :fname
      t.string :sname
      t.string :mname
      t.string :cathedra
      t.integer :chief_id
      t.integer :index
      t.date :time_start
      t.date :time_end
      t.string :specialty
      t.string :direction
      t.string :theme
      t.timestamps
    end
  end
end
