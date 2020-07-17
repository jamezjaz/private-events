# rubocop:disable Style/GuardClause
# Session Controller
class SessionsController < ApplicationController
  def new
    redirect_to user_path(session[:current_user_id]) if session[:current_user]
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:current_user] = @user.username
      session[:current_user_id] = @user.id
      redirect_to user_path(@user.id)
    end
  end

  def destroy
    session.destroy
    redirect_to new_sessions_path
  end
end
# rubocop:enable Style/GuardClause
