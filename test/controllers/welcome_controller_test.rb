require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  def setup
  	@base_title = "Members Only"
  end

  test "should get index" do
    get welcome_index_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
  	get about_url
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

  test "should get login" do
  	get login_url
  	assert_response :success
  	assert_select "title", "Log in | #{@base_title}"
  end

end
