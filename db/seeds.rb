# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin=User.new(:name=>"Администратор",:password=>"123123",:password_confirmation=>"123123",:email=>"admin@admin.ru",:admin_per =>"1",:aspirant_per=>"0",:worker_per=>"1",:chief_per=>"1",:current_role=>"1")


gplan=GeneralPlan.new(:aspirant_id=>"1",:status=>"0")
swork=ScientificWork.new(:general_plan_id=>"1")
awork=AcademicWork.new(:general_plan_id=>"1")
drep=DissertationRepresent.new(:scientific_work_id=>"1")
secwork=SecondWork.new(:scientific_work_id=>"1")
defe=Defense.new(:scientific_work_id=>"1")
wd=WorkDissertation.new(:scientific_work_id=>"1")
exam=Exam.new(:academic_work_id=>"1")
disstud=DisciplinesStudy.new(:academic_work_id=>"1")
chief=Chief.new(:fname=>"Евгений",:sname =>"Роганов",:mname=>"Александрович",:title=>"зав.каф., доцент., к.ф.-м.н.")
chief1=Chief.new(:fname=>"Сергей",:sname =>"Карцов",:mname=>"Константинович",:title=>"д.т.н, профессор")
chief2=Chief.new(:fname=>"Ирина",:sname =>"Белова",:mname=>"Михайловна",:title=>"доцент,к.ф.-м.н.,	доцент")
aspirant=Aspirant.new(:fname => "Алексей",:sname=>"Зыков",:mname=>"Николаевич",:cathedra=>"заочная",:index=>"информационных систем и технологий (36)",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое и программное обеспечение вычислительных машин, комплексов и компьютерных сетей (05.13.11) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Разработка программного обеспечения для повышения эффективности фактального кодирования графической информации",:chief_id=>"2")
aspirant1=Aspirant.new(:fname => "Сергей",:sname=>"Моргунов",:mname=>"Андреевич",:cathedra=>"очная",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое и программное обеспечение вычислительных машин, комплексов и компьютерных сетей (05.13.11) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Разработка эффективных методов декомпозиции пространственных областей при параллельном решении уравнений гидродинамики методом сглаженных частиц.",:chief_id=>"1")
aspirant2=Aspirant.new(:fname => "Иван",:sname=>"Морозов",:mname=>"Алексеевич",:cathedra=>"очная",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое моделирование, численные методы и комплексы программ (05.13.18) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Моделирование конфликтных ситуаций при движении автомобилей",:chief_id=>"3")
aspirant3=Aspirant.new(:fname => "Юрий",:sname=>"Поляков",:mname=>"Анатольевич",:cathedra=>"докторант-очная",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Динамика, прочность машин, приборов и аппаратуры (01.02.06) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Динамика виброзащитных систем колесных машин.",:chief_id=>"2")
aspirant4=Aspirant.new(:fname => "Василий",:sname=>"Степанов",:mname=>"Васильевич",:cathedra=>"очная-коммерч.",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое и программное обеспечение вычислительных машин, комплексов и компьютерных сетей (05.13.11) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Математическое и программное обеспечение экспертной системы для анализа работы авиационных двигателей",:chief_id=>"2")
aspirant5=Aspirant.new(:fname => "Антон",:sname=>"Тиняков",:mname=>"Викторович",:cathedra=>"очная-коммерч.",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое моделирование, численные методы и комплексы программ (05.13.18) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Построение функции отклика детектора гаммы квантов на основе Cd Te в трехмерном случае",:chief_id=>"3")
aspirant6=Aspirant.new(:fname => "Анатолий",:sname=>"Харченко",:mname=>"Алексеевич",:cathedra=>"заочная",:index=>"информационных систем и технологий (36) ",:time_start=>Date.parse("01.04.2003"),:time_end=>Date.parse("01.04.2008"),:specialty=>"Математическое моделирование, численные методы и комплексы программ (05.13.18) ",:direction=>"Экспертные системы и Базы Данных",:theme=>"Анализ оптического потока для постороения модели системы динамического управления",:chief_id=>"3")
as=User.new(:name=>"Аспирант",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"1")
as1=User.new(:name=>"Аспирант1",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant1@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"2")
as2=User.new(:name=>"Аспирант2",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant2@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"3")
as3=User.new(:name=>"Аспирант3",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant3@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"4")
as4=User.new(:name=>"Аспирант4",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant4@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"5")
as5=User.new(:name=>"Аспирант5",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant5@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"6")
as6=User.new(:name=>"Аспирант6",:password=>"123123",:password_confirmation=>"123123",:email=>"aspirant6@aspirant.ru",:admin_per =>"0",:aspirant_per=>"1",:worker_per=>"0",:chief_per=>"0",:current_role=>"4",:aspirant_id=>"7")
ch=User.new(:name=>"НачРук",:password=>"123123",:password_confirmation=>"123123",:email=>"chief@chief.ru",:admin_per=>"0",:aspirant_per=>"0",:worker_per=>"0",:chief_per=>"1",:current_role=>"3",:chief_id=>"1")
ch1=User.new(:name=>"НачРук1",:password=>"123123",:password_confirmation=>"123123",:email=>"chief1@chief.ru",:admin_per=>"0",:aspirant_per=>"0",:worker_per=>"0",:chief_per=>"1",:current_role=>"3",:chief_id=>"2")
ch2=User.new(:name=>"НачРук2",:password=>"123123",:password_confirmation=>"123123",:email=>"chief2@chief.ru",:admin_per=>"0",:aspirant_per=>"0",:worker_per=>"0",:chief_per=>"1",:current_role=>"3",:chief_id=>"3")





chief.save
chief1.save
chief2.save

admin.save
aspirant.save
aspirant1.save
aspirant2.save
aspirant3.save
aspirant4.save
aspirant5.save
aspirant6.save
ch.save
ch1.save
ch2.save
as.save
as1.save
as2.save
as3.save
as4.save
as5.save
as6.save