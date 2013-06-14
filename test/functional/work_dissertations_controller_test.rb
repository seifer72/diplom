# -*- encoding : utf-8 -*-
require 'test_helper'

class WorkDissertationsControllerTest < ActionController::TestCase
  setup do
    @work_dissertation = work_dissertations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_dissertations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_dissertation" do
    assert_difference('WorkDissertation.count') do
      post :create, work_dissertation: { report: @work_dissertation.report, scientific_work_id: @work_dissertation.scientific_work_id, time_end: @work_dissertation.time_end, time_start: @work_dissertation.time_start, work: @work_dissertation.work }
    end

    assert_redirected_to work_dissertation_path(assigns(:work_dissertation))
  end

  test "should show work_dissertation" do
    get :show, id: @work_dissertation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_dissertation
    assert_response :success
  end

  test "should update work_dissertation" do
    put :update, id: @work_dissertation, work_dissertation: { report: @work_dissertation.report, scientific_work_id: @work_dissertation.scientific_work_id, time_end: @work_dissertation.time_end, time_start: @work_dissertation.time_start, work: @work_dissertation.work }
    assert_redirected_to work_dissertation_path(assigns(:work_dissertation))
  end

  test "should destroy work_dissertation" do
    assert_difference('WorkDissertation.count', -1) do
      delete :destroy, id: @work_dissertation
    end

    assert_redirected_to work_dissertations_path
  end
end
