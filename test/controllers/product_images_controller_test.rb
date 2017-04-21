require 'test_helper'

class ProductImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_images_index_url
    assert_response :success
  end

end
