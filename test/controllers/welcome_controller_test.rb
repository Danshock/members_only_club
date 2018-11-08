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

  test "should get posts" do
  	get welcome_posts_url
  	assert_response :success
  	assert_select "title", "Posts | #{@base_title}"
  end

  test "should get login" do
  	get welcome_login_url
  	assert_response :success
  	assert_select "title", "Log in | #{@base_title}"
  end

end
