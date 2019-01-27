require 'test_helper'

class PostImagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_images_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get post_images_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get post_images_controller_new_url
    assert_response :success
  end

end
