# -*- encoding : utf-8 -*-
class TheoreticalPartsController < ApplicationController
  # GET /theoretical_parts
  before_filter :check_auth
  # GET /theoretical_parts.json
  def index
    @theoretical_parts = TheoreticalPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theoretical_parts }
    end
  end

  # GET /theoretical_parts/1
  # GET /theoretical_parts/1.json
  def show
    @theoretical_part = TheoreticalPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @theoretical_part }
    end
  end

  # GET /theoretical_parts/new
  # GET /theoretical_parts/new.json
  def new
    @theoretical_part = TheoreticalPart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @theoretical_part }
    end
  end

  # GET /theoretical_parts/1/edit
  def edit
    @theoretical_part = TheoreticalPart.find(params[:id])
  end

  # POST /theoretical_parts
  # POST /theoretical_parts.json
  def create
    @theoretical_part = TheoreticalPart.new(params[:theoretical_part])

    respond_to do |format|
      if @theoretical_part.save
        format.html { redirect_to @theoretical_part, notice: 'Theoretical part was successfully created.' }
        format.json { render json: @theoretical_part, status: :created, location: @theoretical_part }
      else
        format.html { render action: "new" }
        format.json { render json: @theoretical_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theoretical_parts/1
  # PUT /theoretical_parts/1.json
  def update
    @theoretical_part = TheoreticalPart.find(params[:id])

    respond_to do |format|
      if @theoretical_part.update_attributes(params[:theoretical_part])
        format.html { redirect_to @theoretical_part, notice: 'Theoretical part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @theoretical_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theoretical_parts/1
  # DELETE /theoretical_parts/1.json
  def destroy
    @theoretical_part = TheoreticalPart.find(params[:id])
    @theoretical_part.destroy

    respond_to do |format|
      format.html { redirect_to theoretical_parts_url }
      format.json { head :no_content }
    end
  end
end
