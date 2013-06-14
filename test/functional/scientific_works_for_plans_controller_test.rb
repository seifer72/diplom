# -*- encoding : utf-8 -*-
require 'test_helper'

class ScientificWorksForPlansControllerTest < ActionController::TestCase
  setup do
    @scientific_works_for_plan = scientific_works_for_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scientific_works_for_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scientific_works_for_plan" do
    assert_difference('ScientificWorksForPlan.count') do
      post :create, scientific_works_for_plan: { fact: @scientific_works_for_plan.fact, name: @scientific_works_for_plan.name, plan: @scientific_works_for_plan.plan, time_end: @scientific_works_for_plan.time_end, time_start: @scientific_works_for_plan.time_start, work_plan_id: @scientific_works_for_plan.work_plan_id }
    end

    assert_redirected_to scientific_works_for_plan_path(assigns(:scientific_works_for_plan))
  end

  test "should show scientific_works_for_plan" do
    get :show, id: @scientific_works_for_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scientific_works_for_plan
    assert_response :success
  end

  test "should update scientific_works_for_plan" do
    put :update, id: @scientific_works_for_plan, scientific_works_for_plan: { fact: @scientific_works_for_plan.fact, name: @scientific_works_for_plan.name, plan: @scientific_works_for_plan.plan, time_end: @scientific_works_for_plan.time_end, time_start: @scientific_works_for_plan.time_start, work_plan_id: @scientific_works_for_plan.work_plan_id }
    assert_redirected_to scientific_works_for_plan_path(assigns(:scientific_works_for_plan))
  end

  test "should destroy scientific_works_for_plan" do
    assert_difference('ScientificWorksForPlan.count', -1) do
      delete :destroy, id: @scientific_works_for_plan
    end

    assert_redirected_to scientific_works_for_plans_path
  end
end
