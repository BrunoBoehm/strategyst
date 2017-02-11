require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :pitch => "MyText",
        :context => "MyText",
        :goal => "MyText",
        :mission => "MyText",
        :vision => "MyText",
        :values => "MyText",
        :logo => "Logo",
        :website => "Website",
        :address => "Address"
      ),
      Company.create!(
        :name => "Name",
        :pitch => "MyText",
        :context => "MyText",
        :goal => "MyText",
        :mission => "MyText",
        :vision => "MyText",
        :values => "MyText",
        :logo => "Logo",
        :website => "Website",
        :address => "Address"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
