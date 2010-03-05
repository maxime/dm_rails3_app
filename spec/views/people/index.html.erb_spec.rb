require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')

describe "people/index.html.erb" do
  include PeopleHelper

  before(:each) do
    assign(:people, [
      stub_model(Person, :name => "Maxime", :persisted? => true),
      stub_model(Person, :name => "Scott", :persisted? => true),
    ])
  end

  it "renders a list of people" do
    render
    response.should have_selector("tr>td", :content => "Maxime")
    response.should have_selector("tr>td", :content => "Scott")
  end
end
