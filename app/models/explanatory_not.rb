# -*- encoding : utf-8 -*-
class ExplanatoryNot < ActiveRecord::Base
  belongs_to :aspirant
  attr_accessible :aspirant_id, :content
end
