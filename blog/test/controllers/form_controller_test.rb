require "test_helper"

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get fillform" do
    get form_fillform_url
    assert_response :success
  end
end
