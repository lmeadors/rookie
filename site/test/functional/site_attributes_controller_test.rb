require 'test_helper'

class SiteAttributesControllerTest < ActionController::TestCase
  setup do
    @site_attribute = site_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_attribute" do
    assert_difference('SiteAttribute.count') do
      post :create, :site_attribute => @site_attribute.attributes
    end

    assert_redirected_to site_attribute_path(assigns(:site_attribute))
  end

  test "should show site_attribute" do
    get :show, :id => @site_attribute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @site_attribute.to_param
    assert_response :success
  end

  test "should update site_attribute" do
    put :update, :id => @site_attribute.to_param, :site_attribute => @site_attribute.attributes
    assert_redirected_to site_attribute_path(assigns(:site_attribute))
  end

  test "should destroy site_attribute" do
    assert_difference('SiteAttribute.count', -1) do
      delete :destroy, :id => @site_attribute.to_param
    end

    assert_redirected_to site_attributes_path
  end
end
