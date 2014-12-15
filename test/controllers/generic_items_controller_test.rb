require 'test_helper'

class GenericItemsControllerTest < ActionController::TestCase
  setup do
    @generic_item = generic_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_item" do
    assert_difference('GenericItem.count') do
      post :create, generic_item: { button_link: @generic_item.button_link, button_text: @generic_item.button_text, description: @generic_item.description, graphic: @generic_item.graphic, title: @generic_item.title }
    end

    assert_redirected_to generic_item_path(assigns(:generic_item))
  end

  test "should show generic_item" do
    get :show, id: @generic_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_item
    assert_response :success
  end

  test "should update generic_item" do
    patch :update, id: @generic_item, generic_item: { button_link: @generic_item.button_link, button_text: @generic_item.button_text, description: @generic_item.description, graphic: @generic_item.graphic, title: @generic_item.title }
    assert_redirected_to generic_item_path(assigns(:generic_item))
  end

  test "should destroy generic_item" do
    assert_difference('GenericItem.count', -1) do
      delete :destroy, id: @generic_item
    end

    assert_redirected_to generic_items_path
  end
end
