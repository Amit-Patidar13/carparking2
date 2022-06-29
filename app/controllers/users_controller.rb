class UsersController < ApplicationController

  def index
    @users = User.new
  end

  def userdetails
    @user = User.new
  end

end
