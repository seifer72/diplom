# -*- encoding : utf-8 -*-
class WorkDissertation < ActiveRecord::Base
  belongs_to :scientific_work
  attr_accessible :report, :scientific_work_id, :time_end, :time_start, :work
end
