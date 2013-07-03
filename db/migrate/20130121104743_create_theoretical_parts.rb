# -*- encoding : utf-8 -*-
class CreateTheoreticalParts < ActiveRecord::Migration
  def change
    create_table :theoretical_parts do |t|
      t.integer :stages_work_id
      t.string :content
      t.date :time_start
      t.date :time_end

      t.timestamps
    end
  end
end
