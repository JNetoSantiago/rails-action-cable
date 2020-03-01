import consumer from "./consumer"

document.addEventListener('DOMContentLoaded', function(){ 
  const room = document.querySelector("[data-room-id]")

  if(room) subscription(room.dataset.roomId)
}, false);

const subscription = (id) => {
  consumer.subscriptions.create({ channel: "ChatChannel", room: id }, {
    connected() {
      console.log('connected')
    },
  
    disconnected() {
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      console.log(data)
      document.getElementById('messages').append(parseHTML(data));
    }
  });
}

function parseHTML(html) {
  var t = document.createElement('template');
  t.innerHTML = html;
  return t.content.cloneNode(true);
}