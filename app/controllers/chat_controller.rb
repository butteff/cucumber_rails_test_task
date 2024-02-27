class ChatController < ApplicationController
	before_action :authenticate_user!
  	
  	def index
  		@messages = Message.all
  	end

  	def post
		message = chat_params
		username = '@'+current_user.username
		mes = current_user.messages.create({text: message})
		send_message(username, message, mes.user_id, mes.created_at)
	end

	private
	
	def chat_params
	    params.require(:message)
	end

	def send_message(username, message, user_id, created_at = Time.current.to_s)
	    ActionCable.server.broadcast("chat_one", { username: username, body: message, created_at: created_at, user_id: user_id })
	end

end
