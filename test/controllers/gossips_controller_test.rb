require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gossips_new_url
    assert_response :success
  end

  test "should get edit" do
    get gossips_edit_url
    assert_response :success
  end

  test "should get update" do
    get gossips_update_url
    assert_response :success
  end

  test "should get show" do
    get gossips_show_url
    assert_response :success
  end

  test "should get delete" do
    get gossips_delete_url
    assert_response :success
  end

end
