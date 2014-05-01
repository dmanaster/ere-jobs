require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :company_id => 1,
      :user_id => 2,
      :title => "Title",
      :description => "Description",
      :contact => "Contact",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Contact/)
    rendered.should match(/Location/)
  end
end
