require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)
    @topic = topics(:one)
    sign_in users(:admin)
  end

  test 'authenticated users can see posts' do
    sign_in users(:admin)

    get '/posts'
    assert_response :success
  end

  test "should get index" do
    get posts_path
    assert_response :success
  end

  test "should get new" do
    get new_post_path
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_path, params: { post: {topic_id: @topic.id, body: "Test Post Body", status: 0, title: "Test Post Title" } }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get post_path(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_path(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_path(@post), params: { post: {topic_id: @topic.id, body: "Test Post Body", status: 0, title: "Test Post Title" } }
    assert_redirected_to post_path(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_path(@post)
    end

    assert_redirected_to posts_path
  end
end
