# -*- encoding : utf-8 -*-
class Aspirant < ActiveRecord::Base
  has_one :explanatory_not
  belongs_to :chief
  has_one :general_plan
  has_many :work_plan
  has_one :user
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :chief
  attr_accessible :cathedra, :direction, :fname, :index, :mname, :sname, :specialty, :theme, :time_end, :time_start,:user_attributes,:chief_id,:status,:chief_attributes ,:chief
  after_create :create_general_plan
  after_create :create_work_plan

  def create_work_plan
    WorkPlan.create({:aspirant_id=>self.id,:per_end=>Time.now+1.year,:per_start=>Time.now,:status=>'0'})
  end

  def   create_general_plan
    GeneralPlan.create({:aspirant_id=>self.id,:status=>"0"})
  end
end
