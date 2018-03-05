class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  def new
    @message = Message.new
  end
end
