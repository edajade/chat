class UserController < ApplicationController
  def signin
    cookies[:name] = params[:name]
    redirect_to comments_path
  end
end
