# encoding: UTF-8
require 'rails_helper'

RSpec.describe "LayoutLinks" do

  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails | "

  end
  it "devrait trouver une page Accueil à '/'" do
    get '/'
    expect(response).to have_http_status(:success)
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    expect(response).to have_http_status(:success)
  end


  it "should have an À Propos page at '/about'" do
    get '/about'
    expect(response).to have_http_status(:success)
  end

  it "devrait trouver une page Iade à '/help'" do
    get '/help'
    expect(response).to have_http_status(:success)
  end

  it "devrait avoir une page d'inscription à '/signup'" do
    get '/signup'
    expect(response).to have_http_status(:success)
  end
end
