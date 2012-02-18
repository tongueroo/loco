require 'test_helper'

class BurritosControllerTest < ActionController::TestCase
  setup do
    @burrito = burritos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burritos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burrito" do
    assert_difference('Burrito.count') do
      post :create, burrito: @burrito.attributes
    end

    assert_redirected_to burrito_path(assigns(:burrito))
  end

  test "should show burrito" do
    get :show, id: @burrito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @burrito.to_param
    assert_response :success
  end

  test "should update burrito" do
    put :update, id: @burrito.to_param, burrito: @burrito.attributes
    assert_redirected_to burrito_path(assigns(:burrito))
  end

  test "should destroy burrito" do
    assert_difference('Burrito.count', -1) do
      delete :destroy, id: @burrito.to_param
    end

    assert_redirected_to burritos_path
  end
end
