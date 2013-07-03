# -*- encoding : utf-8 -*-
class Attestation < ActiveRecord::Base
  attr_accessible :aspirant_id, :chief_id, :content, :time_end, :time_start
end
