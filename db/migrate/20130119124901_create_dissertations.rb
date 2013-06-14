# -*- encoding : utf-8 -*-
class CreateDissertations < ActiveRecord::Migration
  def change
    create_table :dissertations do |t|
      t.integer :aspirant_id

      t.timestamps
    end
  end
end
