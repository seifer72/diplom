# -*- encoding : utf-8 -*-
require 'test_helper'

class IntroductionResultsControllerTest < ActionController::TestCase
  setup do
    @introduction_result = introduction_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:introduction_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create introduction_result" do
    assert_difference('IntroductionResult.count') do
      post :create, introduction_result: { act: @introduction_result.act, dissertation_id: @introduction_result.dissertation_id, form: @introduction_result.form, organiz: @introduction_result.organiz }
    end

    assert_redirected_to introduction_result_path(assigns(:introduction_result))
  end

  test "should show introduction_result" do
    get :show, id: @introduction_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @introduction_result
    assert_response :success
  end

  test "should update introduction_result" do
    put :update, id: @introduction_result, introduction_result: { act: @introduction_result.act, dissertation_id: @introduction_result.dissertation_id, form: @introduction_result.form, organiz: @introduction_result.organiz }
    assert_redirected_to introduction_result_path(assigns(:introduction_result))
  end

  test "should destroy introduction_result" do
    assert_difference('IntroductionResult.count', -1) do
      delete :destroy, id: @introduction_result
    end

    assert_redirected_to introduction_results_path
  end
end
