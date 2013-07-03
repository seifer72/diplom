# -*- encoding : utf-8 -*-
require 'test_helper'

class AcademicWorksControllerTest < ActionController::TestCase
  setup do
    @academic_work = academic_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_work" do
    assert_difference('AcademicWork.count') do
      post :create, academic_work: { generalplan_id: @academic_work.generalplan_id }
    end

    assert_redirected_to academic_work_path(assigns(:academic_work))
  end

  test "should show academic_work" do
    get :show, id: @academic_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @academic_work
    assert_response :success
  end

  test "should update academic_work" do
    put :update, id: @academic_work, academic_work: { generalplan_id: @academic_work.generalplan_id }
    assert_redirected_to academic_work_path(assigns(:academic_work))
  end

  test "should destroy academic_work" do
    assert_difference('AcademicWork.count', -1) do
      delete :destroy, id: @academic_work
    end

    assert_redirected_to academic_works_path
  end
end
