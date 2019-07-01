class UsersController < ApplicationController

    before_action :authorized, only: [:show]

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          sessions[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          flash[:error] = @user.errors.full_messages
          render 'new'
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        find_user
        @user.destroy
        redirect_to 
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require[:user].permit[:username, :first_name, :last_name, :email, :id, :group_id, :pasword, :password_digest]
    end

end
