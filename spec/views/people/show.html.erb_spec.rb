require 'spec_helper'

describe "people/show.html.erb" do
  include PeopleHelper
  before(:each) do
    assign(:person, @person = stub_model(Person,
      :name => "MyString"
    ))
  end

  it "renders attributes in <p>" do
    render
    response.should contain("MyString")
  end
end
