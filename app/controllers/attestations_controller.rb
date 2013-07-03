# -*- encoding : utf-8 -*-
class AttestationsController < ApplicationController

  before_filter :check_auth
  # GET /attestations
  # GET /attestations.json
  def index
    @attestations = Attestation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attestations }
    end
  end

  # GET /attestations/1
  # GET /attestations/1.json
  def show
    @attestation = Attestation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attestation }
    end
  end

  # GET /attestations/new
  # GET /attestations/new.json
  def new
    @attestation = Attestation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attestation }
    end
  end

  # GET /attestations/1/edit
  def edit
    @attestation = Attestation.find(params[:id])
  end

  # POST /attestations
  # POST /attestations.json
  def create
    @attestation = Attestation.new(params[:attestation])

    respond_to do |format|
      if @attestation.save
        format.html { redirect_to @attestation, notice: 'Attestation was successfully created.' }
        format.json { render json: @attestation, status: :created, location: @attestation }
      else
        format.html { render action: "new" }
        format.json { render json: @attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attestations/1
  # PUT /attestations/1.json
  def update
    @attestation = Attestation.find(params[:id])

    respond_to do |format|
      if @attestation.update_attributes(params[:attestation])
        format.html { redirect_to @attestation, notice: 'Attestation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attestations/1
  # DELETE /attestations/1.json
  def destroy
    @attestation = Attestation.find(params[:id])
    @attestation.destroy

    respond_to do |format|
      format.html { redirect_to attestations_url }
      format.json { head :no_content }
    end
  end
end
