require 'test_helper'

class Backoffice::AdmnisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_admnis_index_url
    assert_response :success
  end

end
