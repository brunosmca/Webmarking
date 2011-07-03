require 'test_helper'

class WebmarksControllerTest < ActionController::TestCase
  setup do
    @webmark = webmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webmark" do
    assert_difference('Webmark.count') do
      post :create, :webmark => @webmark.attributes
    end

    assert_redirected_to webmark_path(assigns(:webmark))
  end

  test "should show webmark" do
    get :show, :id => @webmark.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @webmark.to_param
    assert_response :success
  end

  test "should update webmark" do
    put :update, :id => @webmark.to_param, :webmark => @webmark.attributes
    assert_redirected_to webmark_path(assigns(:webmark))
  end

  test "should destroy webmark" do
    assert_difference('Webmark.count', -1) do
      delete :destroy, :id => @webmark.to_param
    end

    assert_redirected_to webmarks_path
  end
end
