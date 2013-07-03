# -*- encoding : utf-8 -*-
require 'test_helper'

class DissertationsControllerTest < ActionController::TestCase
  setup do
    @dissertation = dissertations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dissertations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dissertation" do
    assert_difference('Dissertation.count') do
      post :create, dissertation: { aspirant_id: @dissertation.aspirant_id }
    end

    assert_redirected_to dissertation_path(assigns(:dissertation))
  end

  test "should show dissertation" do
    get :show, id: @dissertation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dissertation
    assert_response :success
  end

  test "should update dissertation" do
    put :update, id: @dissertation, dissertation: { aspirant_id: @dissertation.aspirant_id }
    assert_redirected_to dissertation_path(assigns(:dissertation))
  end

  test "should destroy dissertation" do
    assert_difference('Dissertation.count', -1) do
      delete :destroy, id: @dissertation
    end

    assert_redirected_to dissertations_path
  end
end
