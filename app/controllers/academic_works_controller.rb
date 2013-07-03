# -*- encoding : utf-8 -*-
class AcademicWorksController < ApplicationController
  # GET /academic_works
  # GET /academic_works.json
  before_filter :check_auth
  def index
    @academic_works = AcademicWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @academic_works }
    end
  end

  # GET /academic_works/1
  # GET /academic_works/1.json
  def show
    @academic_work = AcademicWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @academic_work }
    end
  end

  # GET /academic_works/new
  # GET /academic_works/new.json
  def new
    @academic_work = AcademicWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @academic_work }
    end
  end

  # GET /academic_works/1/edit
  def edit
    @academic_work = AcademicWork.find(params[:id])
  end

  # POST /academic_works
  # POST /academic_works.json
  def create
    @academic_work = AcademicWork.new(params[:academic_work])

    respond_to do |format|
      if @academic_work.save
        format.html { redirect_to @academic_work, notice: 'Academic work was successfully created.' }
        format.json { render json: @academic_work, status: :created, location: @academic_work }
      else
        format.html { render action: "new" }
        format.json { render json: @academic_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /academic_works/1
  # PUT /academic_works/1.json
  def update
    @academic_work = AcademicWork.find(params[:id])

    respond_to do |format|
      if @academic_work.update_attributes(params[:academic_work])
        format.html { redirect_to @academic_work, notice: 'Academic work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @academic_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_works/1
  # DELETE /academic_works/1.json
  def destroy
    @academic_work = AcademicWork.find(params[:id])
    @academic_work.destroy

    respond_to do |format|
      format.html { redirect_to academic_works_url }
      format.json { head :no_content }
    end
  end
end
