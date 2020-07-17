class UsersController < ApplicationController
      def show
        @user = User.find(params[:id])
        # @previous_events = @user.events.future_events
        # @upcoming_events = @user.events.past_events
      end
    
      def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          redirect_to user_path(@user)
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :email)
      end
end
