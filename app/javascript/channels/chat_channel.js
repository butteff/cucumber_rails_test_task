import consumer from "./consumer.js"

consumer.subscriptions.create({ channel: "OneChannel", room: "chat_one" }, {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('Connected to websockets')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log('Disconnected from websockets')
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    // just a plain js here because I am learning ruby, don't want to use js frameworks over it here
    console.log(data) 
    let dimension = data.user_id == user_id ? 'right' : 'left'
    let msg = '<div class="message msg-container '+dimension+'"><p class="msg">'
    msg += '<span class="username">'+data.username+'</span> | <span class="date">'+data.created_at+'</span> <br>'
    msg += data.body
    msg += '</p></div>'
    $('.chat-side').append(msg)
    $('.chat-side').animate({ scrollTop: $('.chat-side')[0].scrollHeight }, 600)
    $('.chat-side').find('.message').last().hide().fadeIn(2000) 
  }
});
