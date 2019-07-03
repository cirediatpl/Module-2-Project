class UsergroupsController < ApplicationController

    def create
        @usergroup = Usergroup.create(usergroup_params)
        # byebug
        redirect_to user_path(@usergroup.user)
    end

    private

    def usergroup_params
        params.require(:usergroup).permit(:user_id, :group_id)
    end

end