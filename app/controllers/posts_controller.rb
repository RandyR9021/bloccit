class PostsController < ApplicationController
  def index
<<<<<<< HEAD
  	@posts = Post.all
  end

  def show
=======
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
>>>>>>> checkpoint-27-crud
  end

  def new
  end

  def edit
  end
end
