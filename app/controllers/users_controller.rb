# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_filter :admin_permission, :except => [:set_role_adm,:set_role_asp,:set_role_chief,:set_role_work]
  before_filter :check_auth
  def index
    @users = User.search(params[:search])

  end
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @user=User.new
  end


  def set_role_adm
    @user=current_user
    @user.update_attributes(:current_role=>'1')
    redirect_to root_path, :notice => "Роль изменена"
  end

  def set_role_asp
    @user=current_user
    @user.update_attributes(:current_role=>'4')
    redirect_to root_path, :notice => "Роль изменена"

  end

  def set_role_work
    @user=current_user
    @user.update_attributes(:current_role=>'2')
    redirect_to root_path, :notice => "Роль изменена"

  end

  def set_role_chief
    @user=current_user
    @user.update_attributes(:current_role=>'3')
    redirect_to root_path, :notice => "Роль изменена"

  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_url, notice: 'Данные пользователя успешно обновлены.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @user = User.new(params[:user])
    @user.admin_per=0
    @user.aspirant_per=1
    @user.worker_per=0
    @user.chief_per=0
    @user.current_role=4

    if @user.save
      redirect_to root_url, :notice => "Регистрация завершена!"
    else
      render :new
    end
  end

end
