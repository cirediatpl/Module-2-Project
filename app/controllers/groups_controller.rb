class GroupsController < ApplicationController

    def index
        @groups = Group.all
    end

    def show
        find_group
    end

    def create
        @group = Group.create(group_params)
    end

    private

    def find_group
        @group = Group.find(params[:id])
    end

    def group_params
        params.require[:group].permit[:name, :bio, :quiz_id]
    end

end
