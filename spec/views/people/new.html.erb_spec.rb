require 'spec_helper'

describe "people/new.html.erb" do
  include PeopleHelper

  before(:each) do
    assign(:person, stub_model(Person,
      :new_record? => true,
      :name => "MyString"
    ))
  end

  it "renders new person form" do
    render

    response.should have_selector("form", :action => people_path, :method => "post") do |form|
      form.should have_selector("input#person_name", :name => "person[name]")
    end
  end
end
