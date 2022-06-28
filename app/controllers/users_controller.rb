class UsersController < ApplicationController

  def index
    # redirect_to new_user_registration_path
    @users = User.new
  end

  def userdetails
    @user = User.new
  end

end
