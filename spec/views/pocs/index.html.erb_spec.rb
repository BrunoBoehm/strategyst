require 'rails_helper'

RSpec.describe "pocs/index", type: :view do
  before(:each) do
    assign(:pocs, [
      Poc.create!(
        :name => "Name",
        :title => "Title",
        :role => "Role",
        :img => "Img",
        :linkedin => "Linkedin",
        :twitter => "Twitter",
        :telephone => "Telephone",
        :email => "Email",
        :company => nil
      ),
      Poc.create!(
        :name => "Name",
        :title => "Title",
        :role => "Role",
        :img => "Img",
        :linkedin => "Linkedin",
        :twitter => "Twitter",
        :telephone => "Telephone",
        :email => "Email",
        :company => nil
      )
    ])
  end

  it "renders a list of pocs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
