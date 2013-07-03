# -*- encoding : utf-8 -*-
class WorkPlan < ActiveRecord::Base
  belongs_to :aspirant
  has_many :candidate
  has_many :discipline
  has_many :scientific_works_for_plan
  attr_accessible :aspirant_id, :per_end, :per_start,:status
  after_create :create_scientific_works
  after_create :create_candidate
  def check_status_00?
    status==0
  end

  def check_status_11?
    status==1
  end

  def check_status_22?
    status==2
  end
  def check_status_33?
    status==3
  end

  def create_scientific_works
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Обозор литературы по избраной научной теме"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Теоретическая часть"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Расчетная часть"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Создание экспериментальной установки"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Проведение и обработка эксперимента"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Количество статей, сданных в печать"])
    ScientificWorksForPlan.create([:work_plan_id=>self.id,:name=>"Количество докладов по избранной теме"])
  end
  def create_candidate
    Candidate.create([:work_plan_id=>self.id,:name=>"Философия"])
    Candidate.create([:work_plan_id=>self.id,:name=>"Иностранный язык"])
    Candidate.create([:work_plan_id=>self.id,:name=>"Спецдисцииплина"])
  end
end
