# -*- encoding : utf-8 -*-
class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :approbation_dissertation_id
      t.string :content
      t.date :period

      t.timestamps
    end
  end
end
