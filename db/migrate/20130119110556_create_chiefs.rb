# -*- encoding : utf-8 -*-
class CreateChiefs < ActiveRecord::Migration
  def change
    create_table :chiefs do |t|
      t.string :fname
      t.string :sname
      t.string :mname
      t.string :title

      t.timestamps
    end
  end
end
