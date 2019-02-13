class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def add
  end

  def show
    uniqueNumber = params[:id]
    @one_post = Post.all.find_by_id(uniqueNumber)
  end
  
  def new
    post = Post.new
    post.post_isbn = params[:addisbn]
    post.post_title = params[:addtitle]
    post.save

    redirect_to "/home/index"
  end
end
