class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :blog]
  def home
    @message = Message.new
  end

  def blog
    @blogs = Post.order("created_at DESC")
  end
end
