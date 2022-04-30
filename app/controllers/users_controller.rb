class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
    @prototypes = @prototype.includes(:user)
  end
end
