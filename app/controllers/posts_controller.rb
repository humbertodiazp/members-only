class PostsController < ApplicationController
    before_action :authenticate_user!

    def new
        @post = Post.new
    end

    def create
            @post = Post.new(post_params)
        
            if @post.save
            redirect_to new_post_path
            else
            render :new

            end
        end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
        redirect_to @post
        else
        render :edit
        end
    end


    private
    # returns the hash containing the params we need
    # to create or update a post
    def post_params
        params.require(:users).permit(:username,:email,:password)
    end
end
