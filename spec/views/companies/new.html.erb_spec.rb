require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :pitch => "MyText",
      :context => "MyText",
      :goal => "MyText",
      :mission => "MyText",
      :vision => "MyText",
      :values => "MyText",
      :logo => "MyString",
      :website => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "textarea#company_pitch[name=?]", "company[pitch]"

      assert_select "textarea#company_context[name=?]", "company[context]"

      assert_select "textarea#company_goal[name=?]", "company[goal]"

      assert_select "textarea#company_mission[name=?]", "company[mission]"

      assert_select "textarea#company_vision[name=?]", "company[vision]"

      assert_select "textarea#company_values[name=?]", "company[values]"

      assert_select "input#company_logo[name=?]", "company[logo]"

      assert_select "input#company_website[name=?]", "company[website]"

      assert_select "input#company_address[name=?]", "company[address]"
    end
  end
end
