require 'test_helper'

class HellosControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get hellos_welcome_url
    assert_response :success
  end

  test "should get goodbye" do
    get hellos_goodbye_url
    assert_response :success
  end

  test "should get denied" do
    get hellos_denied_url
    assert_response :success
  end

  test "should get say_hello" do
    get hellos_say_hello_url
    assert_response :success
  end

end
