# -*- encoding : utf-8 -*-
class Chief < ActiveRecord::Base
  has_many :aspirant
  has_one :user
  attr_accessor :chief_id
  accepts_nested_attributes_for :user,:aspirant
  attr_accessible :aspirant_id, :fname, :mname, :sname, :title,:user_attributes,:aspirant_attributes,:chief_id
end
