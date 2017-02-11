require 'rails_helper'

RSpec.describe "ValuePropositions", type: :request do
  describe "GET /value_propositions" do
    it "works! (now write some real specs)" do
      get value_propositions_path
      expect(response).to have_http_status(200)
    end
  end
end
