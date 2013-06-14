# -*- encoding : utf-8 -*-
class Article < ActiveRecord::Base
  attr_accessible :approbation_dissertation_id, :content, :period
end
