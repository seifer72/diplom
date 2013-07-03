# -*- encoding : utf-8 -*-
class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.integer :admin_per
      t.integer :aspirant_per
      t.integer :worker_per
      t.integer :chief_per
      t.integer :current_role
      t.string :name
      t.integer :aspirant_id
      t.integer :chief_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
