# -*- encoding : utf-8 -*-
class GeneralPlansController < ApplicationController
  # GET /general_plans
  before_filter :check_auth
  # GET /general_plans.json
  def index
    @general_plans = GeneralPlan.all

    respond_to do |format|
      format.pdf{ render :format=>false}
      format.html # index.html.erb
      format.json { render json: @general_plans }
    end
  end

  # GET /general_plans/1
  # GET /general_plans/1.json
  def show
    @general_plan = GeneralPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.pdf{ render :format=>false}
      format.json { render json: @general_plan }
    end
  end

  # GET /general_plans/new
  # GET /general_plans/new.json
  def new
    @general_plan = GeneralPlan.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general_plan }
    end
  end

  # GET /general_plans/1/edit
  def edit
    @general_plan = GeneralPlan.find(params[:id])
  end

  # POST /general_plans
  # POST /general_plans.json
  def create
    @general_plan = GeneralPlan.new(params[:general_plan])

    respond_to do |format|
      if @general_plan.save
        format.html { redirect_to @general_plan, notice: 'General plan was successfully created.' }
        format.json { render json: @general_plan, status: :created, location: @general_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @general_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /general_plans/1
  # PUT /general_plans/1.json
  def update
    @general_plan = GeneralPlan.find(params[:id])

    respond_to do |format|
      if @general_plan.update_attributes(params[:general_plan])
        format.html { redirect_to @general_plan, notice: 'General plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_plans/1
  # DELETE /general_plans/1.json
  def destroy
    @general_plan = GeneralPlan.find(params[:id])
    @general_plan.destroy

    respond_to do |format|
      format.html { redirect_to general_plans_url }
      format.json { head :no_content }
    end
  end

  def send_1
    @general_plan=current_user.aspirant.general_plan
    @general_plan.update_attributes(:status=>'1')
    @user=current_user.aspirant.chief.user.email
    UserMailer.welcome_email(@user).deliver
    redirect_to root_path, :notice => "Отправлено"

  end
  def send_2
    @general_plan = GeneralPlan.find(params[:id])
    @general_plan.update_attributes(:status=>'2')
    redirect_to root_path, :notice => "Отправлено"
  end
  def send_3
    @general_plan = GeneralPlan.find(params[:id])
    @general_plan.update_attributes(:status=>'3')
    redirect_to root_path, :notice => "Отправлено"
  end


end
