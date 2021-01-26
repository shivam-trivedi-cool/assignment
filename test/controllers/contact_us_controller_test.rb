require "test_helper"

class ContactUsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_us_index_url
    assert_response :success
  end

  test "should get create" do
    get contact_us_create_url
    assert_response :success
  end
end
