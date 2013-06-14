# -*- encoding : utf-8 -*-
class CreateScientificWorks < ActiveRecord::Migration
  def change
    create_table :scientific_works do |t|
      t.integer :general_plan_id

      t.timestamps
    end
  end
end
