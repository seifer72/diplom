# -*- encoding : utf-8 -*-
class CreateExplanatoryNots < ActiveRecord::Migration
  def change
    create_table :explanatory_nots do |t|
      t.integer :aspirant_id
      t.string :content

      t.timestamps
    end
  end
end
