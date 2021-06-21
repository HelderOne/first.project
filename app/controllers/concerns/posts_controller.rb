class PostsController < ApplicationController

    before_action :set_post, only: [:show, :edit, :update, :destroy ]

    def index
      @posts = Post.paginate(page: params[:page], per_page: 5)
    end

    def show

    end

    def new
      @post = Post.new
    end

     def create
       @post = Post.new(post_params)
       if @post.save
         redirect_to @post
       else
         render :new
       end
     end

     def edit

     end

     def update

       if @post.update_attributes(post_params)
          redirect_to @post
        else
          render :edit
       end
     end

     def destroy

       @post.destroy
       redirect_to posts_path
     end

  private
     def set_post
       @post = Post.find(params[:id])
     end


   def post_params
      params.require(:post).permit(:title, :body, :all_tags)
    end


 end