# -*- encoding : utf-8 -*-
module ApplicationHelper
  STATUS=['1','2','3','4']
  def status(x)
   if x==0
     return "Не отправлен"
   end
   if x==1
     return "В ожидание проверки"
   end
    if x==2
      return "На дороботке"
    end
    if x==3
      return "Проверен"
    end
  end

  def true_false(x)
    x==1 ? "Да" : "Нет"
  end
end
