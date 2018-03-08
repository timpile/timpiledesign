class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_post, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:show], site_admin: :all

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully destroyed.'
  end

  def toggle_status
    puts @post.status
    if @post.draft?
      puts @post.status
      @post.published!
    elsif @post.published?
      puts @post.status
      @post.draft!
    end
      puts @post.status
    redirect_to @post, notice: 'Post status has been updated.'
  end

  private
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:topic_id, :title, :body, :status, :main_image, :thumb_image)
    end
end
