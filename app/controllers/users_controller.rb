class UsersController < ApplicationController

    def index
    end

    def show
         @user = User.find(params[:id]) 
    end

    def create
        @user = User.new(user_params)
          if @user.save
            redirect_to user_path
          else
            render 'new'
          end
    end

    def new
        @user = User.new
    end

    private
        def user_params
            params.require(:user).permit(:name, :password,:accountNumber)
        end
end
