# -*- encoding : utf-8 -*-
class CreateGeneralPlans < ActiveRecord::Migration
  def change
    create_table :general_plans do |t|
      t.integer :aspirant_id
      t.integer :status
      t.timestamps
    end
  end
end
