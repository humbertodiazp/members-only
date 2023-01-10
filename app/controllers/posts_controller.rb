class PostsController < ApplicationController
    before_action :authenticate_user!

    def new
        @post = Post.new
    end

    def create
            @post = Post.new(post_params)
            @author =  User.new(user_id)
        
            if @post.save
            redirect_to new_post_path
            else
            render :new

            end
        end

    def index
        @post = Post.all
        
    end

end
