# -*- encoding : utf-8 -*-
class CreateAcademicWorks < ActiveRecord::Migration
  def change
    create_table :academic_works do |t|
      t.integer :general_plan_id

      t.timestamps
    end
  end
end
