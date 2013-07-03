# -*- encoding : utf-8 -*-
require 'test_helper'

class MainStagesControllerTest < ActionController::TestCase
  setup do
    @main_stage = main_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_stage" do
    assert_difference('MainStage.count') do
      post :create, main_stage: { content: @main_stage.content, introduction_result_id: @main_stage.introduction_result_id, time_end: @main_stage.time_end, time_start: @main_stage.time_start }
    end

    assert_redirected_to main_stage_path(assigns(:main_stage))
  end

  test "should show main_stage" do
    get :show, id: @main_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_stage
    assert_response :success
  end

  test "should update main_stage" do
    put :update, id: @main_stage, main_stage: { content: @main_stage.content, introduction_result_id: @main_stage.introduction_result_id, time_end: @main_stage.time_end, time_start: @main_stage.time_start }
    assert_redirected_to main_stage_path(assigns(:main_stage))
  end

  test "should destroy main_stage" do
    assert_difference('MainStage.count', -1) do
      delete :destroy, id: @main_stage
    end

    assert_redirected_to main_stages_path
  end
end
