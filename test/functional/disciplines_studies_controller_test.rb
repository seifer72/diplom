# -*- encoding : utf-8 -*-
require 'test_helper'

class DisciplinesStudiesControllerTest < ActionController::TestCase
  setup do
    @disciplines_study = disciplines_studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplines_studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disciplines_study" do
    assert_difference('DisciplinesStudy.count') do
      post :create, disciplines_study: { academic_work_id: @disciplines_study.academic_work_id, disciplin_name: @disciplines_study.disciplin_name, report: @disciplines_study.report, time_end: @disciplines_study.time_end, time_start: @disciplines_study.time_start }
    end

    assert_redirected_to disciplines_study_path(assigns(:disciplines_study))
  end

  test "should show disciplines_study" do
    get :show, id: @disciplines_study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disciplines_study
    assert_response :success
  end

  test "should update disciplines_study" do
    put :update, id: @disciplines_study, disciplines_study: { academic_work_id: @disciplines_study.academic_work_id, disciplin_name: @disciplines_study.disciplin_name, report: @disciplines_study.report, time_end: @disciplines_study.time_end, time_start: @disciplines_study.time_start }
    assert_redirected_to disciplines_study_path(assigns(:disciplines_study))
  end

  test "should destroy disciplines_study" do
    assert_difference('DisciplinesStudy.count', -1) do
      delete :destroy, id: @disciplines_study
    end

    assert_redirected_to disciplines_studies_path
  end
end
