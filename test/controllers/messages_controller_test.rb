require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  test "POST create" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post messages_url, params: {
        message: {
          name: 'guest',
          email: 'from@example.org',
          body: 'Hello'
        }
      }
    end

    assert_redirected_to root_url

    follow_redirect!

    assert_match /Message received, thanks!/, response.body
  end

end
