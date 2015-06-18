class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @titre = "Inscription"
  end

  def create
    User.create!(params.permit(:user,:email))
  end
end
