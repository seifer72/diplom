# -*- encoding : utf-8 -*-
class DefensesController < ApplicationController
  # GET /defenses
  before_filter :check_auth
  # GET /defenses.json
  def index
    @defenses = Defense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @defenses }
    end
  end

  # GET /defenses/1
  # GET /defenses/1.json
  def show
    @defense = Defense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @defense }
    end
  end

  # GET /defenses/new
  # GET /defenses/new.json
  def new
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @defense = @scientific_work.defense.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @defense }
    end
  end

  # GET /defenses/1/edit
  def edit
    @defense = Defense.find(params[:id])
  end

  # POST /defenses
  # POST /defenses.json
  def create
    @scientific_work=ScientificWork.find(params[:scientific_work_id])
    @defense = @scientific_work.defense.new(params[:defense])

    respond_to do |format|
      if @defense.save
        format.html { redirect_to @defense, notice: 'Defense was successfully created.' }
        format.json { render json: @defense, status: :created, location: @defense }
      else
        format.html { render action: "new" }
        format.json { render json: @defense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /defenses/1
  # PUT /defenses/1.json
  def update
    @defense = Defense.find(params[:id])

    respond_to do |format|
      if @defense.update_attributes(params[:defense])
        format.html { redirect_to @defense, notice: 'Defense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @defense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defenses/1
  # DELETE /defenses/1.json
  def destroy
    @defense = Defense.find(params[:id])
    @defense.destroy

    respond_to do |format|
      format.html { redirect_to defenses_url }
      format.json { head :no_content }
    end
  end
end
