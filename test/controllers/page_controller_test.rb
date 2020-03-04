require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_index_url
    assert_response :success
  end

  test "should get show" do
    get page_show_url
    assert_response :success
  end

  test "should get new" do
    get page_new_url
    assert_response :success
  end

  test "should get create" do
    get page_create_url
    assert_response :success
  end

  test "should get edit" do
    get page_edit_url
    assert_response :success
  end

  test "should get update" do
    get page_update_url
    assert_response :success
  end

  test "should get destroy" do
    get page_destroy_url
    assert_response :success
  end

end
