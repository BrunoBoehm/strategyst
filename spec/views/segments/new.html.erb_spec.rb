require 'rails_helper'

RSpec.describe "segments/new", type: :view do
  before(:each) do
    assign(:segment, Segment.new(
      :name => "MyString",
      :description => "MyText",
      :size => 1,
      :growth => 1,
      :company => nil
    ))
  end

  it "renders new segment form" do
    render

    assert_select "form[action=?][method=?]", segments_path, "post" do

      assert_select "input#segment_name[name=?]", "segment[name]"

      assert_select "textarea#segment_description[name=?]", "segment[description]"

      assert_select "input#segment_size[name=?]", "segment[size]"

      assert_select "input#segment_growth[name=?]", "segment[growth]"

      assert_select "input#segment_company_id[name=?]", "segment[company_id]"
    end
  end
end
