# -*- encoding : utf-8 -*-
class AcademicWork < ActiveRecord::Base
  belongs_to :general_plan
  has_many :exams
  has_many :disciplines_studies
  attr_accessible :general_plan_id
  after_create :create_exam_1
  attr_accessor :academic_id

  def create_exam_1
    Exam.create({:academic_work_id=>self.id,:disciplin_name=>"Философия",:report=>"Экзамен" })
    Exam.create({:academic_work_id=>self.id,:disciplin_name=>"Иностранный язык",:report=>"Экзамен" })
    Exam.create({:academic_work_id=>self.id,:disciplin_name=>"Спецдисциплина",:report=>"Экзамен" })
  end

end
