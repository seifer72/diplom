# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def check_auth
    unless logged_in?
      flash[:error]="Доступ запреще1н"
      redirect_to new_session_path
    end
  end

  def admin_permission
    unless current_user.admin?
      flash[:error]="Доступ запре2щен"
      redirect_to root_path
    end
  end
  def aspirant_permission
    unless current_user.aspirant?
      flash[:error]="Доступ запр3ещен"
      redirect_to root_path
    end
  end
  def chief_permission
    unless current_user.chief?
      flash[:error]="Доступ запрещен"
      redirect_to root_path
    end
  end
  def worker_permission
    unless current_user.worker?
      flash[:error]="Доступ зап5рещен"
      redirect_to root_path
    end
  end
end
