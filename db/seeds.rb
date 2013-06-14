# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin=User.new(:name=>"Администратор",:password=>"123123",:password_confirmation=>"123123",:email=>"admin@admin.ru",:admin_per =>"1",:aspirant_per=>"0",:worker_per=>"1",:chief_per=>"1",:current_role=>"1")
aspirant=Aspirant.new(:fname => "Виктор",:sname=>"Радыгин",:mname=>"Юрьевич",:cathedra=>"кафедра",:index=>"36",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Матем. програм.обеспеч. вычислит.машин",:direction=>"Экспертные системы и Базы Данных",:theme=>"Повышение пр-ти ООБД для задач со средней степенью новиационной сложности",:chief_id=>"1")
chief=Chief.new(:fname=>"Евгений",:sname =>"Роганов",:mname=>"Александрович",:title=>"зав.каф., доцент., к.ф.-м.н.")
gplan=GeneralPlan.new(:aspirant_id=>"1",:status=>"0")
swork=ScientificWork.new(:general_plan_id=>"1")
awork=AcademicWork.new(:general_plan_id=>"1")
drep=DissertationRepresent.new(:scientific_work_id=>"1")
secwork=SecondWork.new(:scientific_work_id=>"1")
defe=Defense.new(:scientific_work_id=>"1")
wd=WorkDissertation.new(:scientific_work_id=>"1")
exam=Exam.new(:academic_work_id=>"1")
disstud=DisciplinesStudy.new(:academic_work_id=>"1")

as=User.new(:name=>"Аспирант",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"1")
ch=User.new(:name=>"НачРук",:password=>"123123",:password_confirmation=>"123123",:email=>"chief@chief.ru",:admin_per=>"0",:aspirant_per=>"0",:worker_per=>"0",:chief_per=>"1",:current_role=>"3",:chief_id=>"1")





chief.save

admin.save
aspirant.save
gplan.save
awork.save
swork.save
drep.save
secwork.save
defe.save
wd.save
exam.save
disstud.save
ch.save
as.save