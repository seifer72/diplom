# -*- encoding : utf-8 -*-
class CreateScientificWorksForPlans < ActiveRecord::Migration
  def change
    create_table :scientific_works_for_plans do |t|
      t.string :name
      t.date :time_start
      t.date :time_end
      t.integer :plan
      t.integer :fact
      t.integer :work_plan_id

      t.timestamps
    end
  end
end
