class PagesController < ApplicationController
  def home
  	@recent_posts = Post.all.order("created_at desc").limit(3).offset(1)
  end

  def show
  	@posts = Post.all.find(params[:id])
  end

  def about
  end
end
