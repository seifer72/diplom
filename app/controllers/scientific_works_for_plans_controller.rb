# -*- encoding : utf-8 -*-
class ScientificWorksForPlansController < ApplicationController
  # GET /scientific_works_for_plans
  before_filter :check_auth
  # GET /scientific_works_for_plans.json
  def index
    @scientific_works_for_plans = ScientificWorksForPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scientific_works_for_plans }
    end
  end

  # GET /scientific_works_for_plans/1
  # GET /scientific_works_for_plans/1.json
  def show
    @scientific_works_for_plan = ScientificWorksForPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scientific_works_for_plan }
    end
  end

  # GET /scientific_works_for_plans/new
  # GET /scientific_works_for_plans/new.json
  def new
    @work_plan=WorkPlan.find(params[:work_plan_id])
    @scientific_works_for_plan = @work_plan.scientific_works_for_plan.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scientific_works_for_plan }
    end
  end

  # GET /scientific_works_for_plans/1/edit
  def edit
    @scientific_works_for_plan = ScientificWorksForPlan.find(params[:id])
  end

  # POST /scientific_works_for_plans
  # POST /scientific_works_for_plans.json
  def create
    @work_plan=WorkPlan.find(params[:work_plan_id])
    @scientific_works_for_plan = @work_plan.scientific_works_for_plan.new(params[:scientific_works_for_plan])

    respond_to do |format|
      if @scientific_works_for_plan.save
        format.html { redirect_to @scientific_works_for_plan, notice: 'Scientific works for plan was successfully created.' }
        format.json { render json: @scientific_works_for_plan, status: :created, location: @scientific_works_for_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @scientific_works_for_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scientific_works_for_plans/1
  # PUT /scientific_works_for_plans/1.json
  def update
    @scientific_works_for_plan = ScientificWorksForPlan.find(params[:id])

    respond_to do |format|
      if @scientific_works_for_plan.update_attributes(params[:scientific_works_for_plan])
        format.html { redirect_to @scientific_works_for_plan, notice: 'Scientific works for plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scientific_works_for_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientific_works_for_plans/1
  # DELETE /scientific_works_for_plans/1.json
  def destroy
    @scientific_works_for_plan = ScientificWorksForPlan.find(params[:id])
    @scientific_works_for_plan.destroy

    respond_to do |format|
      format.html { redirect_to scientific_works_for_plans_url }
      format.json { head :no_content }
    end
  end
end
