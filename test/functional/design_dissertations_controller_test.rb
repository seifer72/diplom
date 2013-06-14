# -*- encoding : utf-8 -*-
require 'test_helper'

class DesignDissertationsControllerTest < ActionController::TestCase
  setup do
    @design_dissertation = design_dissertations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:design_dissertations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design_dissertation" do
    assert_difference('DesignDissertation.count') do
      post :create, design_dissertation: { content: @design_dissertation.content, dissertation_id: @design_dissertation.dissertation_id, srok: @design_dissertation.srok }
    end

    assert_redirected_to design_dissertation_path(assigns(:design_dissertation))
  end

  test "should show design_dissertation" do
    get :show, id: @design_dissertation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design_dissertation
    assert_response :success
  end

  test "should update design_dissertation" do
    put :update, id: @design_dissertation, design_dissertation: { content: @design_dissertation.content, dissertation_id: @design_dissertation.dissertation_id, srok: @design_dissertation.srok }
    assert_redirected_to design_dissertation_path(assigns(:design_dissertation))
  end

  test "should destroy design_dissertation" do
    assert_difference('DesignDissertation.count', -1) do
      delete :destroy, id: @design_dissertation
    end

    assert_redirected_to design_dissertations_path
  end
end
