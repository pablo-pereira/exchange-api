require 'test_helper'

class DollarsControllerTest < ActionController::TestCase
  setup do
    @dollar = dollars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dollars)
  end

  test "should create dollar" do
    assert_difference('Dollar.count') do
      post :create, dollar: { buyer: @dollar.buyer, seller: @dollar.seller, type: @dollar.type }
    end

    assert_response 201
  end

  test "should show dollar" do
    get :show, id: @dollar
    assert_response :success
  end

  test "should update dollar" do
    put :update, id: @dollar, dollar: { buyer: @dollar.buyer, seller: @dollar.seller, type: @dollar.type }
    assert_response 204
  end

  test "should destroy dollar" do
    assert_difference('Dollar.count', -1) do
      delete :destroy, id: @dollar
    end

    assert_response 204
  end
end
