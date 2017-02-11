require 'rails_helper'

RSpec.describe "Pocs", type: :request do
  describe "GET /pocs" do
    it "works! (now write some real specs)" do
      get pocs_path
      expect(response).to have_http_status(200)
    end
  end
end
