class MessagesController < ApplicationController
    def save_message
        chat_room = ChatRoom.find(params[:id])
        message = Message.new(message_params)
        message.chat_room = chat_room
        message.user = current_user

        message.save!

        messageHTML = ApplicationController.renderer.render(partial: 'chat_rooms/message', locals: { message: message })
        ChatChannel.broadcast_to(chat_room, messageHTML)
        # ActionCable.server.broadcast(chat_room, message: @message)
    end

    private
    def message_params
        params.require(:message).permit(:message)
    end
end