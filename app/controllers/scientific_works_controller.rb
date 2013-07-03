# -*- encoding : utf-8 -*-
class ScientificWorksController < ApplicationController
  # GET /scientific_works
  before_filter :check_auth
  # GET /scientific_works.json
  def index
    @scientific_works = ScientificWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scientific_works }
    end
  end

  # GET /scientific_works/1
  # GET /scientific_works/1.json
  def show
    @scientific_work = ScientificWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scientific_work }
    end
  end

  # GET /scientific_works/new
  # GET /scientific_works/new.json
  def new
    @scientific_work = ScientificWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scientific_work }
    end
  end

  # GET /scientific_works/1/edit
  def edit
    @scientific_work = ScientificWork.find(params[:id])
  end

  # POST /scientific_works
  # POST /scientific_works.json
  def create
    @scientific_work = ScientificWork.new(params[:scientific_work])
    respond_to do |format|
      if @scientific_work.save
        format.html { redirect_to @scientific_work, notice: 'Scientific work was successfully created.' }
        format.json { render json: @scientific_work, status: :created, location: @scientific_work }
      else
        format.html { render action: "new" }
        format.json { render json: @scientific_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scientific_works/1
  # PUT /scientific_works/1.json
  def update
    @scientific_work = ScientificWork.find(params[:id])

    respond_to do |format|
      if @scientific_work.update_attributes(params[:scientific_work])
        format.html { redirect_to @scientific_work, notice: 'Scientific work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scientific_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientific_works/1
  # DELETE /scientific_works/1.json
  def destroy
    @scientific_work = ScientificWork.find(params[:id])
    @scientific_work.destroy

    respond_to do |format|
      format.html { redirect_to scientific_works_url }
      format.json { head :no_content }
    end
  end
end
