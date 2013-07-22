class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to comments_url
  end
  
  def index
    @comments = Comment.all.order("id DESC")
    @comment = Comment.new    
    render 'comments/index'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_url
  end
end
