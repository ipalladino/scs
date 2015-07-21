require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { body_background_color: @template.body_background_color, body_font_color: @template.body_font_color, dropdown_menu_font_color: @template.dropdown_menu_font_color, dropdown_menu_hover_background_color: @template.dropdown_menu_hover_background_color, dropdown_menu_hover_font_color: @template.dropdown_menu_hover_font_color, footer_bottom_background_gradiebt: @template.footer_bottom_background_gradiebt, footer_font_color: @template.footer_font_color, footer_header_color: @template.footer_header_color, footer_link_color: @template.footer_link_color, footer_logo: @template.footer_logo, footer_top_background_gradient: @template.footer_top_background_gradient, header_background_color: @template.header_background_color, header_font_color: @template.header_font_color, header_logo: @template.header_logo, header_open_background_color: @template.header_open_background_color, header_open_font_color: @template.header_open_font_color }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    patch :update, id: @template, template: { body_background_color: @template.body_background_color, body_font_color: @template.body_font_color, dropdown_menu_font_color: @template.dropdown_menu_font_color, dropdown_menu_hover_background_color: @template.dropdown_menu_hover_background_color, dropdown_menu_hover_font_color: @template.dropdown_menu_hover_font_color, footer_bottom_background_gradiebt: @template.footer_bottom_background_gradiebt, footer_font_color: @template.footer_font_color, footer_header_color: @template.footer_header_color, footer_link_color: @template.footer_link_color, footer_logo: @template.footer_logo, footer_top_background_gradient: @template.footer_top_background_gradient, header_background_color: @template.header_background_color, header_font_color: @template.header_font_color, header_logo: @template.header_logo, header_open_background_color: @template.header_open_background_color, header_open_font_color: @template.header_open_font_color }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end
