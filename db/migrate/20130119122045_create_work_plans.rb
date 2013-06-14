# -*- encoding : utf-8 -*-
class CreateWorkPlans < ActiveRecord::Migration
  def change
    create_table :work_plans do |t|
      t.date :per_start
      t.date :per_end
      t.integer :aspirant_id
      t.integer :status
      t.timestamps
    end
  end
end
