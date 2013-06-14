# -*- encoding : utf-8 -*-
class SecondWorksController < ApplicationController
  # GET /second_works
  before_filter :check_auth
  # GET /second_works.json
  def index
    @second_works = SecondWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @second_works }
    end
  end

  # GET /second_works/1
  # GET /second_works/1.json
  def show
    @second_work = SecondWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @second_work }
    end
  end

  # GET /second_works/new
  # GET /second_works/new.json
  def new
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @second_work = @scientific_work.second_works.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @second_work }
    end
  end

  # GET /second_works/1/edit
  def edit
    @second_work = SecondWork.find(params[:id])
  end

  # POST /second_works
  # POST /second_works.json
  def create
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @second_work = @scientific_work.second_works.new(params[:second_work])

    respond_to do |format|
      if @second_work.save
        format.html { redirect_to @second_work, notice: 'Second work was successfully created.' }
        format.json { render json: @second_work, status: :created, location: @second_work }
      else
        format.html { render action: "new" }
        format.json { render json: @second_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /second_works/1
  # PUT /second_works/1.json
  def update
    @second_work = SecondWork.find(params[:id])

    respond_to do |format|
      if @second_work.update_attributes(params[:second_work])
        format.html { redirect_to @second_work, notice: 'Second work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @second_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_works/1
  # DELETE /second_works/1.json
  def destroy
    @second_work = SecondWork.find(params[:id])
    @second_work.destroy

    respond_to do |format|
      format.html { redirect_to second_works_url }
      format.json { head :no_content }
    end
  end
end
