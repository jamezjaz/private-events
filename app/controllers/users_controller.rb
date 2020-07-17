# User Controller
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @upcoming_events = @user.upcoming_events
    @previous_events = @user.previous_events
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to user_path(@user) if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
