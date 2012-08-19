require 'test_helper'

class MediaAttributesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_attribute" do
    assert_difference('MediaAttribute.count') do
      post :create, :media_attribute => { }
    end

    assert_redirected_to media_attribute_path(assigns(:media_attribute))
  end

  test "should show media_attribute" do
    get :show, :id => media_attributes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => media_attributes(:one).to_param
    assert_response :success
  end

  test "should update media_attribute" do
    put :update, :id => media_attributes(:one).to_param, :media_attribute => { }
    assert_redirected_to media_attribute_path(assigns(:media_attribute))
  end

  test "should destroy media_attribute" do
    assert_difference('MediaAttribute.count', -1) do
      delete :destroy, :id => media_attributes(:one).to_param
    end

    assert_redirected_to media_attributes_path
  end
end
