# -*- encoding : utf-8 -*-
class MainStage < ActiveRecord::Base
  attr_accessible :content, :introduction_result_id, :time_end, :time_start
end
