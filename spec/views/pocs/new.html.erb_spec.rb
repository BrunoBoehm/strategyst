require 'rails_helper'

RSpec.describe "pocs/new", type: :view do
  before(:each) do
    assign(:poc, Poc.new(
      :name => "MyString",
      :title => "MyString",
      :role => "MyString",
      :img => "MyString",
      :linkedin => "MyString",
      :twitter => "MyString",
      :telephone => "MyString",
      :email => "MyString",
      :company => nil
    ))
  end

  it "renders new poc form" do
    render

    assert_select "form[action=?][method=?]", pocs_path, "post" do

      assert_select "input#poc_name[name=?]", "poc[name]"

      assert_select "input#poc_title[name=?]", "poc[title]"

      assert_select "input#poc_role[name=?]", "poc[role]"

      assert_select "input#poc_img[name=?]", "poc[img]"

      assert_select "input#poc_linkedin[name=?]", "poc[linkedin]"

      assert_select "input#poc_twitter[name=?]", "poc[twitter]"

      assert_select "input#poc_telephone[name=?]", "poc[telephone]"

      assert_select "input#poc_email[name=?]", "poc[email]"

      assert_select "input#poc_company_id[name=?]", "poc[company_id]"
    end
  end
end
