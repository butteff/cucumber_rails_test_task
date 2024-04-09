require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "should not save message without text" do
    msg = Message.new
    assert_not msg.save, "Saved the message without a title"
  end
end
