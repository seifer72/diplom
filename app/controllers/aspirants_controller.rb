# -*- encoding : utf-8 -*-
class AspirantsController < ApplicationController
  before_filter :check_auth
  # GET /aspirants
  # GET /aspirants.json
  def index
    @aspirants = Aspirant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aspirants }
    end
  end

  # GET /aspirants/1
  # GET /aspirants/1.json
  def show
    @aspirant = Aspirant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aspirant }
    end
  end

  # GET /aspirants/new
  # GET /aspirants/new.json
  def new
    @chief=Chief.all
    @aspirant = Aspirant.new
    @aspirant.build_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aspirant }
    end
  end

  # GET /aspirants/1/edit
  def edit
    @aspirant = Aspirant.find(params[:id])

  end

  # POST /aspirants
  # POST /aspirants.json
  def create
    @aspirant = Aspirant.new(params[:aspirant])
    @aspirant.user.aspirant_per=1
    @aspirant.user.current_role=4
    respond_to do |format|
      if @aspirant.save
        format.html { redirect_to @aspirant, notice: 'Aspirant was successfully created.' }
        format.json { render json: @aspirant, status: :created, location: @aspirant }
      else
        format.html { render action: "new" }
        format.json { render json: @aspirant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aspirants/1
  # PUT /aspirants/1.json
  def update
    @aspirant = Aspirant.find(params[:id])

    respond_to do |format|
      if @aspirant.update_attributes(params[:aspirant])
        format.html { redirect_to @aspirant, notice: 'Aspirant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aspirant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspirants/1
  # DELETE /aspirants/1.json
  def destroy
    @aspirant = Aspirant.find(params[:id])
    @aspirant.destroy

    respond_to do |format|
      format.html { redirect_to aspirants_url }
      format.json { head :no_content }
    end
  end
end
