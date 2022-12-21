class PaymentController < ApplicationController
    def hello
    end

    def show
        @user = User.find(params[:id]) #шукаємо необхідний пост в базі даних і беремо його по ID
        end
   def pay
    @user1 = User.find(params[:name])
    @user2 = User.find(params[:accountNumber])
    @user1.balance-params[:balance];
    @user2.balance+params[:balance];
    @user1.update
    @user2.update 
 
       end
   private
       def user_params
           params.require(:user).permit(:name, :password,:accountNumber,:balance)
       end



end
