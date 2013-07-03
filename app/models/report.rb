# -*- encoding : utf-8 -*-
class Report < ActiveRecord::Base
  attr_accessible :approbation_dissertation_id, :content, :period
end
