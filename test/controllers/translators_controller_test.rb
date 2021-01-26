require 'test_helper'

class TranslatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get translators_index_url
    assert_response :success
  end

  test "should get show" do
    get translators_show_url
    assert_response :success
  end

  test "should get new" do
    get translators_new_url
    assert_response :success
  end

  test "should get create" do
    get translators_create_url
    assert_response :success
  end

  test "should get edit" do
    get translators_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get translators_destroy_url
    assert_response :success
  end

end
