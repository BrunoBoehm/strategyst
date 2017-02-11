require 'rails_helper'

RSpec.describe "strategies/index", type: :view do
  before(:each) do
    assign(:strategies, [
      Strategy.create!(
        :pitch => "Pitch",
        :description => "MyText",
        :ksf => "MyText",
        :objective => nil
      ),
      Strategy.create!(
        :pitch => "Pitch",
        :description => "MyText",
        :ksf => "MyText",
        :objective => nil
      )
    ])
  end

  it "renders a list of strategies" do
    render
    assert_select "tr>td", :text => "Pitch".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
