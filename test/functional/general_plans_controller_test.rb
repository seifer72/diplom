# -*- encoding : utf-8 -*-
require 'test_helper'

class GeneralPlansControllerTest < ActionController::TestCase
  setup do
    @general_plan = general_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_plan" do
    assert_difference('GeneralPlan.count') do
      post :create, general_plan: { aspirant_id: @general_plan.aspirant_id }
    end

    assert_redirected_to general_plan_path(assigns(:general_plan))
  end

  test "should show general_plan" do
    get :show, id: @general_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_plan
    assert_response :success
  end

  test "should update general_plan" do
    put :update, id: @general_plan, general_plan: { aspirant_id: @general_plan.aspirant_id }
    assert_redirected_to general_plan_path(assigns(:general_plan))
  end

  test "should destroy general_plan" do
    assert_difference('GeneralPlan.count', -1) do
      delete :destroy, id: @general_plan
    end

    assert_redirected_to general_plans_path
  end
end
