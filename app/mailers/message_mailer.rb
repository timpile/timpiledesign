class MessageMailer < ApplicationMailer

  def contact_me(message)
    @body = message.body

    mail to: "timpiledesign@gmail.com", from: message.email, subject: "Contact form message: #{message.email}"
  end
end
