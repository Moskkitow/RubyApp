require 'test_helper'

class Backoffice::ShowMailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_show_mail_index_url
    assert_response :success
  end

end
