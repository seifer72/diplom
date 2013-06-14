# -*- encoding : utf-8 -*-
class CreateDesignDissertations < ActiveRecord::Migration
  def change
    create_table :design_dissertations do |t|
      t.integer :dissertation_id
      t.string :content
      t.date :period

      t.timestamps
    end
  end
end
