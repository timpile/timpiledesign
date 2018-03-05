require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new name: 'guest',
                          email: 'from@example.org',
                          body: 'hello'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "Contact form message: #{message.email}", email.subject
    assert_equal ['timpiledesign@gmail.com'], email.to
    assert_equal ["#{message.email}"], email.from
    assert_match /hello/, email.body.encoded
  end

end
