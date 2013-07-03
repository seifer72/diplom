# -*- encoding : utf-8 -*-
class Candidate < ActiveRecord::Base
  belongs_to :work_plan
  attr_accessible :fact, :name, :plan, :time_end, :time_start, :work_plan_id
end
