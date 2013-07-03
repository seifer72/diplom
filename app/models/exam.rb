# -*- encoding : utf-8 -*-
class Exam < ActiveRecord::Base
  belongs_to :academic_work
  attr_accessible :academic_work_id, :disciplin_name, :report, :time_end, :time_start
end
