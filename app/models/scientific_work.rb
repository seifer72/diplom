# -*- encoding : utf-8 -*-
class ScientificWork < ActiveRecord::Base
  belongs_to :general_plan
  has_many :dissertation_represents
  has_many :second_works
  has_many :work_dissertations
  has_many :defense
  attr_accessible :general_plan_id
  after_create :create_scientific_work

  def create_scientific_work
     WorkDissertation.create([:scientific_work_id =>self.id,:work=>"Обозор литературы по теме диссертцией"])
     WorkDissertation.create([:scientific_work_id =>self.id,:work=>"Теоретическая часть"])
     WorkDissertation.create([:scientific_work_id =>self.id,:work=>"Расчетная часть"])
     WorkDissertation.create([:scientific_work_id =>self.id,:work=>"Создание экспериментальной установки"])
     WorkDissertation.create([:scientific_work_id =>self.id,:work=>"Проведение и обработка эксперимента"])
  end

end
