# -*- encoding : utf-8 -*-
class IntroductionResultsController < ApplicationController
  # GET /introduction_results
  before_filter :check_auth
  # GET /introduction_results.json
  def index
    @introduction_results = IntroductionResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @introduction_results }
    end
  end

  # GET /introduction_results/1
  # GET /introduction_results/1.json
  def show
    @introduction_result = IntroductionResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @introduction_result }
    end
  end

  # GET /introduction_results/new
  # GET /introduction_results/new.json
  def new
    @introduction_result = IntroductionResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @introduction_result }
    end
  end

  # GET /introduction_results/1/edit
  def edit
    @introduction_result = IntroductionResult.find(params[:id])
  end

  # POST /introduction_results
  # POST /introduction_results.json
  def create
    @introduction_result = IntroductionResult.new(params[:introduction_result])

    respond_to do |format|
      if @introduction_result.save
        format.html { redirect_to @introduction_result, notice: 'Introduction result was successfully created.' }
        format.json { render json: @introduction_result, status: :created, location: @introduction_result }
      else
        format.html { render action: "new" }
        format.json { render json: @introduction_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /introduction_results/1
  # PUT /introduction_results/1.json
  def update
    @introduction_result = IntroductionResult.find(params[:id])

    respond_to do |format|
      if @introduction_result.update_attributes(params[:introduction_result])
        format.html { redirect_to @introduction_result, notice: 'Introduction result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @introduction_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /introduction_results/1
  # DELETE /introduction_results/1.json
  def destroy
    @introduction_result = IntroductionResult.find(params[:id])
    @introduction_result.destroy

    respond_to do |format|
      format.html { redirect_to introduction_results_url }
      format.json { head :no_content }
    end
  end
end
