# -*- encoding : utf-8 -*-
class Defense < ActiveRecord::Base
  belongs_to :scientific_work
  attr_accessible :report, :scientific_work_id, :time_end, :time_start
end
