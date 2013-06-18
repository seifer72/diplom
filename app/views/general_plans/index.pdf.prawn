# coding: utf-8
pdf.font(Rails.root.join("app/fonts/verdana.ttf"))
pdf.text "Общий учебный план аспиранта", :size => 18, :align => :center
pdf.text "(на весь период обучения)" , :size => 12, :align => :center
pdf.text "(составляется и утверждается не позднее месяца со дня зачисления аспиранта)" , :size => 12, :align => :center
pdf.move_down 20
    pdf.text "Учебная работа", :size => 18, :align => :center
current_user.aspirant.general_plan.academic_work.exams.each do |x|

    pdf.move_down 10
    pdf.text "Наименование работы                :#{x.disciplin_name}", :align => :left
    pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
    pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
    pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
    pdf.move_down 20
end
    pdf.text "Дисциплины для изучения" , :size => 18, :align => :center
current_user.aspirant.general_plan.academic_work.disciplines_studies.each do |x|

    pdf.move_down 10
    pdf.text "Наименование работы                :#{x.disciplin_name}", :align => :left
    pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
    pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
    pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
    pdf.move_down 20
end
pdf.text "Научная работа" , :size => 18, :align => :center
pdf.text "Работа над дисертацией" , :size => 12, :align => :center
current_user.aspirant.general_plan.scientific_work.work_dissertations.each do |x|
 pdf.move_down 10
     pdf.text "Наименование работы                :#{x.work}", :align => :left
     pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
     pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
     pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
     pdf.move_down 20
 end
pdf.text "Предварительная защита научной работы" , :size => 18, :align => :center
current_user.aspirant.general_plan.scientific_work.defense.each do |x|
pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
  pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
  pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
  pdf.move_down 20
end
pdf.text "Представление диссертации в ученый совет" , :size => 18, :align => :center
current_user.aspirant.general_plan.scientific_work.dissertation_represents.each do |x|
pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
  pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
  pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
  pdf.move_down 20
end
pdf.text "Другие виды работ" , :size => 18, :align => :center
current_user.aspirant.general_plan.scientific_work.second_works.each do |x|
pdf.text "Дата начала                               :#{x.time_start}"     , :align => :left  , :inline_format => true
  pdf.text "Дата окончания                          :#{x.time_end}"   , :align => :left , :inline_format => true
  pdf.text "Форма отчетности                       :#{x.report}"   , :align => :left, :inline_format => true
  pdf.move_down 20
end

pdf.text "Аспирант ___________________________________________________20___г."
pdf.text "Научный руководитель ________________________________________20___г."