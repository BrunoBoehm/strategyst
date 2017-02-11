require 'rails_helper'

RSpec.describe "segments/index", type: :view do
  before(:each) do
    assign(:segments, [
      Segment.create!(
        :name => "Name",
        :description => "MyText",
        :size => 2,
        :growth => 3,
        :company => nil
      ),
      Segment.create!(
        :name => "Name",
        :description => "MyText",
        :size => 2,
        :growth => 3,
        :company => nil
      )
    ])
  end

  it "renders a list of segments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
