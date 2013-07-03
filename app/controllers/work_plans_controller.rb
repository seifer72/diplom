# -*- encoding : utf-8 -*-
class WorkPlansController < ApplicationController
  # GET /work_plans
  before_filter :check_auth
  # GET /work_plans.json
  def index
    @work_plans = WorkPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_plans }
    end
  end

  # GET /work_plans/1
  # GET /work_plans/1.json
  def show
    @work_plan = WorkPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_plan }
    end
  end

  # GET /work_plans/new
  # GET /work_plans/new.json
  def new
    @work_plan = WorkPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_plan }
    end
  end

  # GET /work_plans/1/edit
  def edit
    @work_plan = WorkPlan.find(params[:id])
  end

  # POST /work_plans
  # POST /work_plans.json
  def create
    @work_plan = WorkPlan.new(params[:work_plan])

    respond_to do |format|
      if @work_plan.save
        format.html { redirect_to @work_plan, notice: 'Work plan was successfully created.' }
        format.json { render json: @work_plan, status: :created, location: @work_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @work_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_plans/1
  # PUT /work_plans/1.json
  def update
    @work_plan = WorkPlan.find(params[:id])

    respond_to do |format|
      if @work_plan.update_attributes(params[:work_plan])
        format.html { redirect_to @work_plan, notice: 'Work plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_plans/1
  # DELETE /work_plans/1.json
  def destroy
    @work_plan = WorkPlan.find(params[:id])
    @work_plan.destroy

    respond_to do |format|
      format.html { redirect_to work_plans_url }
      format.json { head :no_content }
    end
  end

  def send_w1
    @work_plan= WorkPlan.find(params[:id])
    @work_plan.update_attributes(:status=>'1')
    redirect_to root_path, :notice => "Отправлено"
  end

  def send_w2
    @work_plan = WorkPlan.find(params[:id])
    @work_plan.update_attributes(:status=>'2')
    redirect_to root_path, :notice => "Отправлено"
  end

  def send_w3
    @work_plan = WorkPlan.find(params[:id])
    @work_plan.update_attributes(:status=>'3')
    @aspirant=@work_plan.aspirant
      if @aspirant.work_plan.count <4
        WorkPlan.create({:aspirant_id=>@work_plan.aspirant.id,:per_end=>@work_plan.per_end+1.year,:per_start=>@work_plan.per_start+1.year,:status=>'0'})
      end
    else
      redirect_to root_path, :notice => "Отправлено"
  end
end
