# -*- encoding : utf-8 -*-
class StagesWorksController < ApplicationController
  # GET /stages_works
  before_filter :check_auth
  # GET /stages_works.json
  def index
    @stages_works = StagesWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stages_works }
    end
  end

  # GET /stages_works/1
  # GET /stages_works/1.json
  def show
    @stages_work = StagesWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stages_work }
    end
  end

  # GET /stages_works/new
  # GET /stages_works/new.json
  def new
    @stages_work = StagesWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stages_work }
    end
  end

  # GET /stages_works/1/edit
  def edit
    @stages_work = StagesWork.find(params[:id])
  end

  # POST /stages_works
  # POST /stages_works.json
  def create
    @stages_work = StagesWork.new(params[:stages_work])

    respond_to do |format|
      if @stages_work.save
        format.html { redirect_to @stages_work, notice: 'Stages work was successfully created.' }
        format.json { render json: @stages_work, status: :created, location: @stages_work }
      else
        format.html { render action: "new" }
        format.json { render json: @stages_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stages_works/1
  # PUT /stages_works/1.json
  def update
    @stages_work = StagesWork.find(params[:id])

    respond_to do |format|
      if @stages_work.update_attributes(params[:stages_work])
        format.html { redirect_to @stages_work, notice: 'Stages work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stages_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stages_works/1
  # DELETE /stages_works/1.json
  def destroy
    @stages_work = StagesWork.find(params[:id])
    @stages_work.destroy

    respond_to do |format|
      format.html { redirect_to stages_works_url }
      format.json { head :no_content }
    end
  end
end
