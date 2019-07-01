class UsersController < ApplicationController

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        
    end

    def edit
        find_user
    end

    def update

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

    def group_params
        params.require[:group].permit[:name, :quiz_id]
    end

end
