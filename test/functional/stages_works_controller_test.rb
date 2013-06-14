# -*- encoding : utf-8 -*-
require 'test_helper'

class StagesWorksControllerTest < ActionController::TestCase
  setup do
    @stages_work = stages_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stages_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stages_work" do
    assert_difference('StagesWork.count') do
      post :create, stages_work: { dissertations_id: @stages_work.dissertations_id }
    end

    assert_redirected_to stages_work_path(assigns(:stages_work))
  end

  test "should show stages_work" do
    get :show, id: @stages_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stages_work
    assert_response :success
  end

  test "should update stages_work" do
    put :update, id: @stages_work, stages_work: { dissertations_id: @stages_work.dissertations_id }
    assert_redirected_to stages_work_path(assigns(:stages_work))
  end

  test "should destroy stages_work" do
    assert_difference('StagesWork.count', -1) do
      delete :destroy, id: @stages_work
    end

    assert_redirected_to stages_works_path
  end
end
