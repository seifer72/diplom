# -*- encoding : utf-8 -*-
require 'test_helper'

class AttestationsControllerTest < ActionController::TestCase
  setup do
    @attestation = attestations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attestations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attestation" do
    assert_difference('Attestation.count') do
      post :create, attestation: { aspirant_id: @attestation.aspirant_id, chief_id: @attestation.chief_id, content: @attestation.content, time_end: @attestation.time_end, time_start: @attestation.time_start }
    end

    assert_redirected_to attestation_path(assigns(:attestation))
  end

  test "should show attestation" do
    get :show, id: @attestation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attestation
    assert_response :success
  end

  test "should update attestation" do
    put :update, id: @attestation, attestation: { aspirant_id: @attestation.aspirant_id, chief_id: @attestation.chief_id, content: @attestation.content, time_end: @attestation.time_end, time_start: @attestation.time_start }
    assert_redirected_to attestation_path(assigns(:attestation))
  end

  test "should destroy attestation" do
    assert_difference('Attestation.count', -1) do
      delete :destroy, id: @attestation
    end

    assert_redirected_to attestations_path
  end
end
