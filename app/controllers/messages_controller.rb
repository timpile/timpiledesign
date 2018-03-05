class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to root_url, notice: "Message received, thanks!"
    else
      redirect_to root_url, error: "There was a problem sending your message."
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
