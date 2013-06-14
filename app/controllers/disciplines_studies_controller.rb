# -*- encoding : utf-8 -*-
class DisciplinesStudiesController < ApplicationController
  # GET /disciplines_studies
  before_filter :check_auth
  # GET /disciplines_studies.json
  def index
    @disciplines_studies = DisciplinesStudy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disciplines_studies }
    end
  end

  # GET /disciplines_studies/1
  # GET /disciplines_studies/1.json
  def show
    @disciplines_study = DisciplinesStudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disciplines_study }
    end
  end

  # GET /disciplines_studies/new
  # GET /disciplines_studies/new.json
  def new
    @academic_work=AcademicWork.find(params[:academic_work_id])
    @disciplines_study = @academic_work.disciplines_studies.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disciplines_study }
    end
  end

  # GET /disciplines_studies/1/edit
  def edit
    @disciplines_study = DisciplinesStudy.find(params[:id])
  end

  # POST /disciplines_studies
  # POST /disciplines_studies.json
  def create
    @academic_work=AcademicWork.find(params[:academic_work_id])
    @disciplines_study = @academic_work.disciplines_studies.new(params[:disciplines_study])

    respond_to do |format|
      if @disciplines_study.save
        format.html { redirect_to @disciplines_study, notice: 'Disciplines study was successfully created.' }
        format.json { render json: @disciplines_study, status: :created, location: @disciplines_study }
      else
        format.html { render action: "new" }
        format.json { render json: @disciplines_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines_studies/1
  # PUT /disciplines_studies/1.json
  def update
    @disciplines_study = DisciplinesStudy.find(params[:id])

    respond_to do |format|
      if @disciplines_study.update_attributes(params[:disciplines_study])
        format.html { redirect_to @disciplines_study, notice: 'Disciplines study was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disciplines_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines_studies/1
  # DELETE /disciplines_studies/1.json
  def destroy
    @disciplines_study = DisciplinesStudy.find(params[:id])
    @disciplines_study.destroy

    respond_to do |format|
      format.html { redirect_to disciplines_studies_url }
      format.json { head :no_content }
    end
  end

end

private

def load_academic_work
  @academic_work=AcademicWork.find(params[:academic_work_id])
end
