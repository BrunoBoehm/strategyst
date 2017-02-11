require 'rails_helper'

RSpec.describe "tactics/show", type: :view do
  before(:each) do
    @tactic = assign(:tactic, Tactic.create!(
      :pitch => "Pitch",
      :description => "MyText",
      :medium => "Medium",
      :importance => 2,
      :frequency => "Frequency",
      :kpi => "Kpi",
      :budget => 3,
      :strategy => nil,
      :poc => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pitch/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Medium/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Frequency/)
    expect(rendered).to match(/Kpi/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
