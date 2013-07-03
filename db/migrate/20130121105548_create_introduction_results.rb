# -*- encoding : utf-8 -*-
class CreateIntroductionResults < ActiveRecord::Migration
  def change
    create_table :introduction_results do |t|
      t.integer :dissertation_id
      t.string :form
      t.string :organiz
      t.date :act

      t.timestamps
    end
  end
end
