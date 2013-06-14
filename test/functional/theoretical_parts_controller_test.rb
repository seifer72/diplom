# -*- encoding : utf-8 -*-
require 'test_helper'

class TheoreticalPartsControllerTest < ActionController::TestCase
  setup do
    @theoretical_part = theoretical_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theoretical_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theoretical_part" do
    assert_difference('TheoreticalPart.count') do
      post :create, theoretical_part: { content: @theoretical_part.content, stages_work_id: @theoretical_part.stages_work_id, time_end: @theoretical_part.time_end, time_start: @theoretical_part.time_start }
    end

    assert_redirected_to theoretical_part_path(assigns(:theoretical_part))
  end

  test "should show theoretical_part" do
    get :show, id: @theoretical_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theoretical_part
    assert_response :success
  end

  test "should update theoretical_part" do
    put :update, id: @theoretical_part, theoretical_part: { content: @theoretical_part.content, stages_work_id: @theoretical_part.stages_work_id, time_end: @theoretical_part.time_end, time_start: @theoretical_part.time_start }
    assert_redirected_to theoretical_part_path(assigns(:theoretical_part))
  end

  test "should destroy theoretical_part" do
    assert_difference('TheoreticalPart.count', -1) do
      delete :destroy, id: @theoretical_part
    end

    assert_redirected_to theoretical_parts_path
  end
end
