require 'rails_helper'

RSpec.describe "segments/show", type: :view do
  before(:each) do
    @segment = assign(:segment, Segment.create!(
      :name => "Name",
      :description => "MyText",
      :size => 2,
      :growth => 3,
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
