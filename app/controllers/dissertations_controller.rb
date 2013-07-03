# -*- encoding : utf-8 -*-
class DissertationsController < ApplicationController
  # GET /dissertations
  # GET /dissertations.json
  before_filter :check_auth
  def index
    @dissertations = Dissertation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dissertations }
    end
  end

  # GET /dissertations/1
  # GET /dissertations/1.json
  def show
    @dissertation = Dissertation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dissertation }
    end
  end

  # GET /dissertations/new
  # GET /dissertations/new.json
  def new
    @dissertation = Dissertation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dissertation }
    end
  end

  # GET /dissertations/1/edit
  def edit
    @dissertation = Dissertation.find(params[:id])
  end

  # POST /dissertations
  # POST /dissertations.json
  def create
    @dissertation = Dissertation.new(params[:dissertation])

    respond_to do |format|
      if @dissertation.save
        format.html { redirect_to @dissertation, notice: 'Dissertation was successfully created.' }
        format.json { render json: @dissertation, status: :created, location: @dissertation }
      else
        format.html { render action: "new" }
        format.json { render json: @dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dissertations/1
  # PUT /dissertations/1.json
  def update
    @dissertation = Dissertation.find(params[:id])

    respond_to do |format|
      if @dissertation.update_attributes(params[:dissertation])
        format.html { redirect_to @dissertation, notice: 'Dissertation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dissertation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dissertations/1
  # DELETE /dissertations/1.json
  def destroy
    @dissertation = Dissertation.find(params[:id])
    @dissertation.destroy

    respond_to do |format|
      format.html { redirect_to dissertations_url }
      format.json { head :no_content }
    end
  end
end
