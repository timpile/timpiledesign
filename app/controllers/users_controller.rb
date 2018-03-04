class UsersController < ApplicationController
  layout "user_profile"
  def show
    @user = User.find(params[:id])
  end
end
