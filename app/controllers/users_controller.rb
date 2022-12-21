class UsersController < ApplicationController

    def index
        end
        def new #створюємо новий пост
        end

    def show
         @user = User.find(params[:id]) #шукаємо необхідний пост в базі даних і беремо його по ID
         end
    def create
            @user=User.new(user_params) 
            @user.save 
        end
    private
        def user_params

            params.require(:user).permit(:name, :password,:accountNumber)
        end

end
