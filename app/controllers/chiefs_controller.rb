# -*- encoding : utf-8 -*-
class ChiefsController < ApplicationController
  before_filter :check_auth
  # GET /chiefs
  # GET /chiefs.json
  def index
    @chiefs = Chief.all
  end

  # GET /chiefs/1
  # GET /chiefs/1.json
  def show
    @chief = Chief.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chief }
    end
  end

  # GET /chiefs/new
  # GET /chiefs/new.json
  def new
    @chief = Chief.new
    @chief.build_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chief }
    end
  end

  # GET /chiefs/1/edit
  def edit
    @chief = Chief.find(params[:id])
  end

  # POST /chiefs
  # POST /chiefs.json
  def create
    @chief = Chief.new(params[:chief])
    @chief.user.chief_per=1
    @chief.user.current_role=3
    respond_to do |format|
      if @chief.save
        format.html { redirect_to @chief, notice: 'Chief was successfully created.' }
        format.json { render json: @chief, status: :created, location: @chief }
      else
        format.html { render action: "new" }
        format.json { render json: @chief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chiefs/1
  # PUT /chiefs/1.json
  def update
    @chief = Chief.find(params[:id])

    respond_to do |format|
      if @chief.update_attributes(params[:chief])
        format.html { redirect_to root_path, notice: 'Chief was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chiefs/1
  # DELETE /chiefs/1.json
  def destroy
    @chief = Chief.find(params[:id])
    @chief.destroy

    respond_to do |format|
      format.html { redirect_to chiefs_url }
      format.json { head :no_content }
    end
  end
end
