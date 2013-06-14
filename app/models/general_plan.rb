# -*- encoding : utf-8 -*-
class GeneralPlan < ActiveRecord::Base
  belongs_to :aspirant
  has_one :scientific_work
  has_one :academic_work
  attr_accessible :aspirant_id,:status
  after_create :create_academic_work
  after_create :create_scientific_work

  def check_status_0?
    status==0
  end

  def check_status_1?
    status==1
  end

  def check_status_2?
    status==2
  end
  def check_status_3?
    status==3
  end

  def create_academic_work
    AcademicWork.create({:general_plan_id=> self.id})
  end
  def create_scientific_work
    ScientificWork.create({:general_plan_id=>self.id})
  end
end
