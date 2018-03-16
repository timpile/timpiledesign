class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :blog]
  def home
    @message = Message.new
  end

  def blog
    if logged_in?(:site_admin)
      @posts = Post.order("created_at DESC").limit(5)
    else
      @posts = Post.published.order("created_at DESC").limit(5)
    end
  end
end
