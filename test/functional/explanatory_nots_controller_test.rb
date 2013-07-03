# -*- encoding : utf-8 -*-
require 'test_helper'

class ExplanatoryNotsControllerTest < ActionController::TestCase
  setup do
    @explanatory_not = explanatory_nots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:explanatory_nots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create explanatory_not" do
    assert_difference('ExplanatoryNot.count') do
      post :create, explanatory_not: { aspirant_id: @explanatory_not.aspirant_id, content: @explanatory_not.content }
    end

    assert_redirected_to explanatory_not_path(assigns(:explanatory_not))
  end

  test "should show explanatory_not" do
    get :show, id: @explanatory_not
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @explanatory_not
    assert_response :success
  end

  test "should update explanatory_not" do
    put :update, id: @explanatory_not, explanatory_not: { aspirant_id: @explanatory_not.aspirant_id, content: @explanatory_not.content }
    assert_redirected_to explanatory_not_path(assigns(:explanatory_not))
  end

  test "should destroy explanatory_not" do
    assert_difference('ExplanatoryNot.count', -1) do
      delete :destroy, id: @explanatory_not
    end

    assert_redirected_to explanatory_nots_path
  end
end
