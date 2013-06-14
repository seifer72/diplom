# -*- encoding : utf-8 -*-
require 'test_helper'

class ScientificWorksControllerTest < ActionController::TestCase
  setup do
    @scientific_work = scientific_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scientific_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scientific_work" do
    assert_difference('ScientificWork.count') do
      post :create, scientific_work: { general_plan_id: @scientific_work.general_plan_id }
    end

    assert_redirected_to scientific_work_path(assigns(:scientific_work))
  end

  test "should show scientific_work" do
    get :show, id: @scientific_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scientific_work
    assert_response :success
  end

  test "should update scientific_work" do
    put :update, id: @scientific_work, scientific_work: { general_plan_id: @scientific_work.general_plan_id }
    assert_redirected_to scientific_work_path(assigns(:scientific_work))
  end

  test "should destroy scientific_work" do
    assert_difference('ScientificWork.count', -1) do
      delete :destroy, id: @scientific_work
    end

    assert_redirected_to scientific_works_path
  end
end
