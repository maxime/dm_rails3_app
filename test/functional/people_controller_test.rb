require File.join(File.dirname(__FILE__), '..', 'test_helper')

class PeopleControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "index is successful" do
    p Rails.env
    p ActionController::Base.allow_forgery_protection
    get :index
    assert_response :success
  end

  test "create new person" do
    post :create, :person => {:name => "Maxime"}
    assert_redirected_to 'http://test.host/people/1'
  end
end
