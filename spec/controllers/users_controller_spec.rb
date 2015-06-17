require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :new
      expect(response.body).to have_selector("head title", text:"Inscription", visible: false)
    end
  end

end
