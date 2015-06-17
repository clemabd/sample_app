require 'rails_helper'

RSpec.describe PagesController, type: :controller do
   render_views

  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails | "

  end
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :home
      expect(response.body).to have_selector("head title", text: @base_title + "Accueil", visible: false)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :contact
      expect(response.body).to have_selector("head title", text:@base_title + "Contact" , visible: false)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
      end
    it "doit avoir le bon titre" do
      get :about
      expect(response.body).to have_selector("head title", text: @base_title + "A propos", visible: false)
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :help
      expect(response.body).to have_selector("head title", text: @base_title + "Aide", visible: false)
    end
  end

end
