# encoding: UTF-8
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

  describe "GET 'show'" do

    before(:each) do
      @user = Factory(:user)
    end

    it "devrait réussir" do
      get :show, :id => @user
      expect(response).to have_http_status(:success)
    end

    it "devrait trouver le bon utilisateur" do
      get :show, :id => @user
      #assigns(:user).should == @user
    end

    it "devrait avoir le bon titre" do
      get :show, :id => @user
      expect(response.body).to have_selector("title", text: "Simple App du Tutoriel Ruby on Rails | "+ @user.nom, visible: false)
    end

    it "devrait inclure le nom de l'utilisateur" do
      get :show, :id => @user
      expect(response.body).to have_selector("h1", text: @user.nom)
    end

    it "devrait avoir une image de profil" do
      get :show, :id => @user
      expect(response.body).to have_selector("h1>img.gravatar")
    end
  end
end
