# -*- encoding : utf-8 -*-
require 'test_helper'

class ApprobationDissertationsControllerTest < ActionController::TestCase
  setup do
    @approbation_dissertation = approbation_dissertations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:approbation_dissertations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create approbation_dissertation" do
    assert_difference('ApprobationDissertation.count') do
      post :create, approbation_dissertation: { dissertation_id: @approbation_dissertation.dissertation_id }
    end

    assert_redirected_to approbation_dissertation_path(assigns(:approbation_dissertation))
  end

  test "should show approbation_dissertation" do
    get :show, id: @approbation_dissertation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @approbation_dissertation
    assert_response :success
  end

  test "should update approbation_dissertation" do
    put :update, id: @approbation_dissertation, approbation_dissertation: { dissertation_id: @approbation_dissertation.dissertation_id }
    assert_redirected_to approbation_dissertation_path(assigns(:approbation_dissertation))
  end

  test "should destroy approbation_dissertation" do
    assert_difference('ApprobationDissertation.count', -1) do
      delete :destroy, id: @approbation_dissertation
    end

    assert_redirected_to approbation_dissertations_path
  end
end
