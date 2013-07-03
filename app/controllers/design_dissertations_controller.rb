# -*- encoding : utf-8 -*-
class DesignDissertationsController < ApplicationController
  # GET /design_dissertations
  # GET /design_dissertations.json
  before_filter :check_auth
  def index
    @design_dissertations = DesignDissertation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @design_dissertations }
    end
  end

  # GET /design_dissertations/1
  # GET /design_dissertations/1.json
  def show
    @design_dissertation = DesignDissertation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @design_dissertation }
    end
  end

  # GET /design_dissertations/new
  # GET /design_dissertations/new.json
  def new
    @design_dissertation = DesignDissertation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @design_dissertation }
    end
  end

  # GET /design_dissertations/1/edit
  def edit
    @design_dissertation = DesignDissertation.find(params[:id])
  end

  # POST /design_dissertations
  # POST /design_dissertations.json
  def create
    @design_dissertation = DesignDissertation.new(params[:design_dissertation])

    respond_to do |format|
      if @design_dissertation.save
        format.html { redirect_to @design_dissertation, notice: 'Design dissertation was successfully created.' }
        format.json { render json: @design_dissertation, status: :created, location: @design_dissertation }
      else
        format.html { render action: "new" }
        format.json { render json: @design_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /design_dissertations/1
  # PUT /design_dissertations/1.json
  def update
    @design_dissertation = DesignDissertation.find(params[:id])

    respond_to do |format|
      if @design_dissertation.update_attributes(params[:design_dissertation])
        format.html { redirect_to @design_dissertation, notice: 'Design dissertation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @design_dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_dissertations/1
  # DELETE /design_dissertations/1.json
  def destroy
    @design_dissertation = DesignDissertation.find(params[:id])
    @design_dissertation.destroy

    respond_to do |format|
      format.html { redirect_to design_dissertations_url }
      format.json { head :no_content }
    end
  end
end
