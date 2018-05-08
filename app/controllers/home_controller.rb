class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/index'
    
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'
  end
  
  def edit
    @post = Post.find(params[:post_id])
    # @는 액션에 있는 뷰파일에서 그 변수를 쓰고 싶으면 붙임(destroy뷰파일에는 post를 쓰지 않았음)
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    
    redirect_to '/home/index'
  end
  
  
end
