# -*- encoding : utf-8 -*-
class CreateStagesWorks < ActiveRecord::Migration
  def change
    create_table :stages_works do |t|
      t.integer :dissertations_id

      t.timestamps
    end
  end
end
