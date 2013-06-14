# -*- encoding : utf-8 -*-
class MainStagesController < ApplicationController
  # GET /main_stages
  before_filter :check_auth
  # GET /main_stages.json
  def index
    @main_stages = MainStage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_stages }
    end
  end

  # GET /main_stages/1
  # GET /main_stages/1.json
  def show
    @main_stage = MainStage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_stage }
    end
  end

  # GET /main_stages/new
  # GET /main_stages/new.json
  def new
    @main_stage = MainStage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_stage }
    end
  end

  # GET /main_stages/1/edit
  def edit
    @main_stage = MainStage.find(params[:id])
  end

  # POST /main_stages
  # POST /main_stages.json
  def create
    @main_stage = MainStage.new(params[:main_stage])

    respond_to do |format|
      if @main_stage.save
        format.html { redirect_to @main_stage, notice: 'Main stage was successfully created.' }
        format.json { render json: @main_stage, status: :created, location: @main_stage }
      else
        format.html { render action: "new" }
        format.json { render json: @main_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_stages/1
  # PUT /main_stages/1.json
  def update
    @main_stage = MainStage.find(params[:id])

    respond_to do |format|
      if @main_stage.update_attributes(params[:main_stage])
        format.html { redirect_to @main_stage, notice: 'Main stage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_stages/1
  # DELETE /main_stages/1.json
  def destroy
    @main_stage = MainStage.find(params[:id])
    @main_stage.destroy

    respond_to do |format|
      format.html { redirect_to main_stages_url }
      format.json { head :no_content }
    end
  end
end
