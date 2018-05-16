class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat"
  end

  def revceive(data)
	actioncable.server.broadcast('chat', data)
  end
end
