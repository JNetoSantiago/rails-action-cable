class ChatChannel < ApplicationCable::Channel
  def subscribed
    chat_room = ChatRoom.find(params[:room])
    stream_for chat_room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
