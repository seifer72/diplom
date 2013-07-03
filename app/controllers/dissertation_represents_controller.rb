# -*- encoding : utf-8 -*-
class DissertationRepresentsController < ApplicationController
  # GET /dissertation_represents
  # GET /dissertation_represents.json
  before_filter :check_auth
  def index
    @dissertation_represents = DissertationRepresent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dissertation_represents }
    end
  end

  # GET /dissertation_represents/1
  # GET /dissertation_represents/1.json
  def show
    @dissertation_represent = DissertationRepresent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dissertation_represent }
    end
  end

  # GET /dissertation_represents/new
  # GET /dissertation_represents/new.json
  def new
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @dissertation_represent = @scientific_work.dissertation_represents.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dissertation_represent }
    end
  end

  # GET /dissertation_represents/1/edit
  def edit
    @dissertation_represent = DissertationRepresent.find(params[:id])
  end

  # POST /dissertation_represents
  # POST /dissertation_represents.json
  def create
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @dissertation_represent = @scientific_work.dissertation_represents.new(params[:dissertation_represent])

    respond_to do |format|
      if @dissertation_represent.save
        format.html { redirect_to @dissertation_represent, notice: 'Dissertation represent was successfully created.' }
        format.json { render json: @dissertation_represent, status: :created, location: @dissertation_represent }
      else
        format.html { render action: "new" }
        format.json { render json: @dissertation_represent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dissertation_represents/1
  # PUT /dissertation_represents/1.json
  def update
    @dissertation_represent = DissertationRepresent.find(params[:id])

    respond_to do |format|
      if @dissertation_represent.update_attributes(params[:dissertation_represent])
        format.html { redirect_to @dissertation_represent, notice: 'Dissertation represent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dissertation_represent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dissertation_represents/1
  # DELETE /dissertation_represents/1.json
  def destroy
    @dissertation_represent = DissertationRepresent.find(params[:id])
    @dissertation_represent.destroy

    respond_to do |format|
      format.html { redirect_to dissertation_represents_url }
      format.json { head :no_content }
    end
  end
end
