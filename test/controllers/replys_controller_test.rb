require "test_helper"

class ReplysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get replys_new_url
    assert_response :success
  end

  test "should get create" do
    get replys_create_url
    assert_response :success
  end

  test "should get edit" do
    get replys_edit_url
    assert_response :success
  end

  test "should get update" do
    get replys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get replys_destroy_url
    assert_response :success
  end
end
