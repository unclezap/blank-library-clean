require 'test_helper'

class LineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get line_index_url
    assert_response :success
  end

  test "should get show" do
    get line_show_url
    assert_response :success
  end

  test "should get new" do
    get line_new_url
    assert_response :success
  end

  test "should get create" do
    get line_create_url
    assert_response :success
  end

  test "should get edit" do
    get line_edit_url
    assert_response :success
  end

  test "should get update" do
    get line_update_url
    assert_response :success
  end

  test "should get destroy" do
    get line_destroy_url
    assert_response :success
  end

end
