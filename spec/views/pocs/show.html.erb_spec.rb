require 'rails_helper'

RSpec.describe "pocs/show", type: :view do
  before(:each) do
    @poc = assign(:poc, Poc.create!(
      :name => "Name",
      :title => "Title",
      :role => "Role",
      :img => "Img",
      :linkedin => "Linkedin",
      :twitter => "Twitter",
      :telephone => "Telephone",
      :email => "Email",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Linkedin/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
  end
end
