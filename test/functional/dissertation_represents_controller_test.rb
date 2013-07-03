# -*- encoding : utf-8 -*-
require 'test_helper'

class DissertationRepresentsControllerTest < ActionController::TestCase
  setup do
    @dissertation_represent = dissertation_represents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dissertation_represents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dissertation_represent" do
    assert_difference('DissertationRepresent.count') do
      post :create, dissertation_represent: { report: @dissertation_represent.report, scientific_work_id: @dissertation_represent.scientific_work_id, time_end: @dissertation_represent.time_end, time_start: @dissertation_represent.time_start }
    end

    assert_redirected_to dissertation_represent_path(assigns(:dissertation_represent))
  end

  test "should show dissertation_represent" do
    get :show, id: @dissertation_represent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dissertation_represent
    assert_response :success
  end

  test "should update dissertation_represent" do
    put :update, id: @dissertation_represent, dissertation_represent: { report: @dissertation_represent.report, scientific_work_id: @dissertation_represent.scientific_work_id, time_end: @dissertation_represent.time_end, time_start: @dissertation_represent.time_start }
    assert_redirected_to dissertation_represent_path(assigns(:dissertation_represent))
  end

  test "should destroy dissertation_represent" do
    assert_difference('DissertationRepresent.count', -1) do
      delete :destroy, id: @dissertation_represent
    end

    assert_redirected_to dissertation_represents_path
  end
end
