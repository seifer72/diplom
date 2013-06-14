# -*- encoding : utf-8 -*-
require 'test_helper'

class SecondWorksControllerTest < ActionController::TestCase
  setup do
    @second_work = second_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_work" do
    assert_difference('SecondWork.count') do
      post :create, second_work: { report: @second_work.report, scientific_work_id: @second_work.scientific_work_id, time_end: @second_work.time_end, time_start: @second_work.time_start, work: @second_work.work }
    end

    assert_redirected_to second_work_path(assigns(:second_work))
  end

  test "should show second_work" do
    get :show, id: @second_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_work
    assert_response :success
  end

  test "should update second_work" do
    put :update, id: @second_work, second_work: { report: @second_work.report, scientific_work_id: @second_work.scientific_work_id, time_end: @second_work.time_end, time_start: @second_work.time_start, work: @second_work.work }
    assert_redirected_to second_work_path(assigns(:second_work))
  end

  test "should destroy second_work" do
    assert_difference('SecondWork.count', -1) do
      delete :destroy, id: @second_work
    end

    assert_redirected_to second_works_path
  end
end
