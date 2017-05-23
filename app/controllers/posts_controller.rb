class PostsController < ApplicationController
  def index
  		@posts = Post.all
  end

  def new
    @post = Post.new		
  end	

  def create
    @post = Post.new(params[:title])
    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end

  def show
  	@post = Post.find(params[:id])
  end
end
