class OneChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_one"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
