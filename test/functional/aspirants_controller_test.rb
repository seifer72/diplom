# -*- encoding : utf-8 -*-
require 'test_helper'

class AspirantsControllerTest < ActionController::TestCase
  setup do
    @aspirant = aspirants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspirants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspirant" do
    assert_difference('Aspirant.count') do
      post :create, aspirant: { cathedra: @aspirant.cathedra, direction: @aspirant.direction, fname: @aspirant.fname, index: @aspirant.index, mname: @aspirant.mname, sname: @aspirant.sname, specialty: @aspirant.specialty, theme: @aspirant.theme, time_end: @aspirant.time_end, time_start: @aspirant.time_start }
    end

    assert_redirected_to aspirant_path(assigns(:aspirant))
  end

  test "should show aspirant" do
    get :show, id: @aspirant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aspirant
    assert_response :success
  end

  test "should update aspirant" do
    put :update, id: @aspirant, aspirant: { cathedra: @aspirant.cathedra, direction: @aspirant.direction, fname: @aspirant.fname, index: @aspirant.index, mname: @aspirant.mname, sname: @aspirant.sname, specialty: @aspirant.specialty, theme: @aspirant.theme, time_end: @aspirant.time_end, time_start: @aspirant.time_start }
    assert_redirected_to aspirant_path(assigns(:aspirant))
  end

  test "should destroy aspirant" do
    assert_difference('Aspirant.count', -1) do
      delete :destroy, id: @aspirant
    end

    assert_redirected_to aspirants_path
  end
end
