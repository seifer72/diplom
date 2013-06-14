# -*- encoding : utf-8 -*-
class CreateMainStages < ActiveRecord::Migration
  def change
    create_table :main_stages do |t|
      t.integer :introduction_result_id
      t.string :content
      t.date :time_start
      t.date :time_end

      t.timestamps
    end
  end
end
