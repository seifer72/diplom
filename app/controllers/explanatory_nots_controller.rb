# -*- encoding : utf-8 -*-
class ExplanatoryNotsController < ApplicationController
  # GET /explanatory_nots
  before_filter :check_auth
  # GET /explanatory_nots.json
  def index
    @explanatory_nots = ExplanatoryNot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @explanatory_nots }
    end
  end

  # GET /explanatory_nots/1
  # GET /explanatory_nots/1.json
  def show
    @explanatory_not = ExplanatoryNot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @explanatory_not }
    end
  end

  # GET /explanatory_nots/new
  # GET /explanatory_nots/new.json
  def new
    @explanatory_not = ExplanatoryNot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @explanatory_not }
    end
  end

  # GET /explanatory_nots/1/edit
  def edit
    @explanatory_not = ExplanatoryNot.find(params[:id])
  end

  # POST /explanatory_nots
  # POST /explanatory_nots.json
  def create
    @explanatory_not = ExplanatoryNot.new(params[:explanatory_not])

    respond_to do |format|
      if @explanatory_not.save
        format.html { redirect_to @explanatory_not, notice: 'Explanatory not was successfully created.' }
        format.json { render json: @explanatory_not, status: :created, location: @explanatory_not }
      else
        format.html { render action: "new" }
        format.json { render json: @explanatory_not.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /explanatory_nots/1
  # PUT /explanatory_nots/1.json
  def update
    @explanatory_not = ExplanatoryNot.find(params[:id])

    respond_to do |format|
      if @explanatory_not.update_attributes(params[:explanatory_not])
        format.html { redirect_to @explanatory_not, notice: 'Explanatory not was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @explanatory_not.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explanatory_nots/1
  # DELETE /explanatory_nots/1.json
  def destroy
    @explanatory_not = ExplanatoryNot.find(params[:id])
    @explanatory_not.destroy

    respond_to do |format|
      format.html { redirect_to explanatory_nots_url }
      format.json { head :no_content }
    end
  end
end
