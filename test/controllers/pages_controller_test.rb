require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get customer" do
    get :customer
    assert_response :success
  end

  test "should get thanks" do
    get :thanks
    assert_response :success
  end

end
