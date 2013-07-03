# -*- encoding : utf-8 -*-
class ApprobationDissertationsController < ApplicationController
  # GET /approbation_dissertations
  # GET /approbation_dissertations.json
  before_filter :check_auth
  def index
    @approbation_dissertations = ApprobationDissertation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @approbation_dissertations }
    end
  end

  # GET /approbation_dissertations/1
  # GET /approbation_dissertations/1.json
  def show
    @approbation_dissertation = ApprobationDissertation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @approbation_dissertation }
    end
  end

  # GET /approbation_dissertations/new
  # GET /approbation_dissertations/new.json
  def new
    @approbation_dissertation = ApprobationDissertation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @approbation_dissertation }
    end
  end

  # GET /approbation_dissertations/1/edit
  def edit
    @approbation_dissertation = ApprobationDissertation.find(params[:id])
  end

  # POST /approbation_dissertations
  # POST /approbation_dissertations.json
  def create
    @approbation_dissertation = ApprobationDissertation.new(params[:approbation_dissertation])

    respond_to do |format|
      if @approbation_dissertation.save
        format.html { redirect_to @approbation_dissertation, notice: 'Approbation dissertation was successfully created.' }
        format.json { render json: @approbation_dissertation, status: :created, location: @approbation_dissertation }
      else
        format.html { render action: "new" }
        format.json { render json: @approbation_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /approbation_dissertations/1
  # PUT /approbation_dissertations/1.json
  def update
    @approbation_dissertation = ApprobationDissertation.find(params[:id])

    respond_to do |format|
      if @approbation_dissertation.update_attributes(params[:approbation_dissertation])
        format.html { redirect_to @approbation_dissertation, notice: 'Approbation dissertation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @approbation_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approbation_dissertations/1
  # DELETE /approbation_dissertations/1.json
  def destroy
    @approbation_dissertation = ApprobationDissertation.find(params[:id])
    @approbation_dissertation.destroy

    respond_to do |format|
      format.html { redirect_to approbation_dissertations_url }
      format.json { head :no_content }
    end
  end
end
