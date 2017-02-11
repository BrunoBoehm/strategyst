require 'rails_helper'

RSpec.describe "value_propositions/new", type: :view do
  before(:each) do
    assign(:value_proposition, ValueProposition.new(
      :product_service => "MyText",
      :price => 1,
      :promotion => "MyText",
      :place => "MyText",
      :gain_creator => "MyText",
      :pain_reliever => "MyText",
      :differentiation => "MyText",
      :company => nil
    ))
  end

  it "renders new value_proposition form" do
    render

    assert_select "form[action=?][method=?]", value_propositions_path, "post" do

      assert_select "textarea#value_proposition_product_service[name=?]", "value_proposition[product_service]"

      assert_select "input#value_proposition_price[name=?]", "value_proposition[price]"

      assert_select "textarea#value_proposition_promotion[name=?]", "value_proposition[promotion]"

      assert_select "textarea#value_proposition_place[name=?]", "value_proposition[place]"

      assert_select "textarea#value_proposition_gain_creator[name=?]", "value_proposition[gain_creator]"

      assert_select "textarea#value_proposition_pain_reliever[name=?]", "value_proposition[pain_reliever]"

      assert_select "textarea#value_proposition_differentiation[name=?]", "value_proposition[differentiation]"

      assert_select "input#value_proposition_company_id[name=?]", "value_proposition[company_id]"
    end
  end
end
