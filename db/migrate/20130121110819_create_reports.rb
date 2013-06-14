# -*- encoding : utf-8 -*-
class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :approbation_dissertation_id
      t.string :content
      t.date :period

      t.timestamps
    end
  end
end
