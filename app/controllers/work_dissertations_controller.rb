# -*- encoding : utf-8 -*-
class WorkDissertationsController < ApplicationController
  # GET /work_dissertations
  before_filter :check_auth
  # GET /work_dissertations.json
  def index
    @work_dissertations = WorkDissertation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_dissertations }
    end
  end

  # GET /work_dissertations/1
  # GET /work_dissertations/1.json
  def show
    @work_dissertation = WorkDissertation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_dissertation }
    end
  end

  # GET /work_dissertations/new
  # GET /work_dissertations/new.json
  def new
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @work_dissertation = @scientific_work.work_dissertations.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_dissertation }
    end
  end

  # GET /work_dissertations/1/edit
  def edit
    @work_dissertation = WorkDissertation.find(params[:id])
  end

  # POST /work_dissertations
  # POST /work_dissertations.json
  def create
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @work_dissertation = @scientific_work.work_dissertations.new(params[:work_dissertation])

    respond_to do |format|
      if @work_dissertation.save
        format.html { redirect_to @work_dissertation, notice: 'Work dissertation was successfully created.' }
        format.json { render json: @work_dissertation, status: :created, location: @work_dissertation }
      else
        format.html { render action: "new" }
        format.json { render json: @work_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_dissertations/1
  # PUT /work_dissertations/1.json
  def update
    @work_dissertation = WorkDissertation.find(params[:id])

    respond_to do |format|
      if @work_dissertation.update_attributes(params[:work_dissertation])
        format.html { redirect_to @work_dissertation, notice: 'Work dissertation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_dissertations/1
  # DELETE /work_dissertations/1.json
  def destroy
    @work_dissertation = WorkDissertation.find(params[:id])
    @work_dissertation.destroy

    respond_to do |format|
      format.html { redirect_to work_dissertations_url }
      format.json { head :no_content }
    end
  end
end
