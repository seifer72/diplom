# -*- encoding : utf-8 -*-
class Experiment < ActiveRecord::Base
  attr_accessible :content, :stages_work_id, :time_end, :time_start
end
