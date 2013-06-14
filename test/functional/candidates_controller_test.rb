# -*- encoding : utf-8 -*-
require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { fact: @candidate.fact, name: @candidate.name, plan: @candidate.plan, time_end: @candidate.time_end, time_start: @candidate.time_start, work_plan_id: @candidate.work_plan_id }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    put :update, id: @candidate, candidate: { fact: @candidate.fact, name: @candidate.name, plan: @candidate.plan, time_end: @candidate.time_end, time_start: @candidate.time_start, work_plan_id: @candidate.work_plan_id }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
