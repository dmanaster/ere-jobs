require 'spec_helper'

describe "jobs/index" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
        :company_id => 1,
        :user_id => 2,
        :title => "Title",
        :description => "Description",
        :contact => "Contact",
        :location => "Location"
      ),
      stub_model(Job,
        :company_id => 1,
        :user_id => 2,
        :title => "Title",
        :description => "Description",
        :contact => "Contact",
        :location => "Location"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
