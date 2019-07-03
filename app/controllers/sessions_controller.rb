class SessionsController < ApplicationController

    def new
    end
  
    def create
      @user = User.find_by(email: params[:email])
    #   return head(:forbidden) unless @user.authenticate(params[:password])
    #   session[:user_id] = @user.id
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:notice] = "Either username or password is incorrect"
        render 'new'
      end
    end
  
    def destroy
      session.delete :user_id
      redirect_to "/login"
    end
  end
