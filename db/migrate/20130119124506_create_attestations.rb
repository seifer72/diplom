# -*- encoding : utf-8 -*-
class CreateAttestations < ActiveRecord::Migration
  def change
    create_table :attestations do |t|
      t.string :content
      t.date :time_start
      t.date :time_end
      t.integer :aspirant_id
      t.integer :chief_id

      t.timestamps
    end
  end
end
