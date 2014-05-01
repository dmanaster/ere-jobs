require 'spec_helper'

describe "jobs/edit" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :company_id => 1,
      :user_id => 1,
      :title => "MyString",
      :description => "MyString",
      :contact => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_path(@job), "post" do
      assert_select "input#job_company_id[name=?]", "job[company_id]"
      assert_select "input#job_user_id[name=?]", "job[user_id]"
      assert_select "input#job_title[name=?]", "job[title]"
      assert_select "input#job_description[name=?]", "job[description]"
      assert_select "input#job_contact[name=?]", "job[contact]"
      assert_select "input#job_location[name=?]", "job[location]"
    end
  end
end
