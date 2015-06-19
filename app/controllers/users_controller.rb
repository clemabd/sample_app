class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @titre = @user.nom
  end

  def new
    @titre = "Inscription"
  end

  def create
    User.create!(params.permit(:user,:email, :password, :password_confirmation))
  end
end
