# -*- encoding : utf-8 -*-
class CreateApprobationDissertations < ActiveRecord::Migration
  def change
    create_table :approbation_dissertations do |t|
      t.integer :dissertation_id

      t.timestamps
    end
  end
end
