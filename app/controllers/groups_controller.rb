class GroupsController < ApplicationController

    def index
        @groups = Group.all
        @quizzes = Quiz.all
    end

    def show
        find_group
        @post = Post.new
    end

    def create
        @group = Group.create(group_params)
    end

    private

    def find_group
        @group = Group.find(params[:id])
    end

    def group_params
        params.require(:group).permit(:name, :bio, :quiz_id, post_ids:[])
    end

end
