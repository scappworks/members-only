class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id if current_user
        
        if @post.save
            flash.notice = "Post created"
        else
            flash.alert = "Problem generating post"
        end

        redirect_to posts_path
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
