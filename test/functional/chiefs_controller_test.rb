# -*- encoding : utf-8 -*-
require 'test_helper'

class ChiefsControllerTest < ActionController::TestCase
  setup do
    @chief = chiefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chiefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chief" do
    assert_difference('Chief.count') do
      post :create, chief: { aspirant_id: @chief.aspirant_id, fname: @chief.fname, mname: @chief.mname, sname: @chief.sname, title: @chief.title }
    end

    assert_redirected_to chief_path(assigns(:chief))
  end

  test "should show chief" do
    get :show, id: @chief
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chief
    assert_response :success
  end

  test "should update chief" do
    put :update, id: @chief, chief: { aspirant_id: @chief.aspirant_id, fname: @chief.fname, mname: @chief.mname, sname: @chief.sname, title: @chief.title }
    assert_redirected_to chief_path(assigns(:chief))
  end

  test "should destroy chief" do
    assert_difference('Chief.count', -1) do
      delete :destroy, id: @chief
    end

    assert_redirected_to chiefs_path
  end
end
