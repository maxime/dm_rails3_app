require 'spec_helper'

describe "people/edit.html.erb" do
  include PeopleHelper

  before(:each) do
    assign(:person, @person = stub_model(Person,
      :new_record? => false,
      :name => "MyString",
      :persisted? => true
    ))
  end

  it "renders the edit person form" do
    render

    response.should have_selector("form", :action => person_path(@person), :method => "post") do |form|
      form.should have_selector("input#person_name", :name => "person[name]")
    end
  end
end
