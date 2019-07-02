class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    def edit
        find_post
    end

    def update
        find_post
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def show
        find_post
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content, :edit_status)
    end

end
