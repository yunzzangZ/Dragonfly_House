<!DOCTYPE html>
<html>
<head>
    <title>Chat Room</title>
    <meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        #chat-room {
            border: 1px solid #ccc;
            padding: 10px;
            width: 500px;
            height: 300px;
            overflow-y: scroll;
            margin-bottom: 10px;
        }
        .message {
            margin: 5px 0;
        }
        .from-me {
            text-align: right;
        }
        .from-others {
            text-align: left;
        }
    </style>
    <script type="text/javascript">
        var stompClient = null;

        function connect() {
            var socket = new SockJS('/dragonfly/chat-websocket');
            stompClient = Stomp.over(socket);
            stompClient.connect({}, function (frame) {
                console.log('Connected: ' + frame);
                stompClient.subscribe('/user/queue/reply', function (messageOutput) {
                    showMessageOutput(JSON.parse(messageOutput.body), true);
                });
            });
        }

        function sendMessage() {
            var text = document.getElementById('text').value;
            var recipient = document.getElementById('recipient').value;
            stompClient.send("/app/chat.sendMessage", {}, JSON.stringify({'text': text, 'recipient': recipient}));
            document.getElementById('text').value = '';
        }

        function showMessageOutput(messageOutput, isPrivate) {
            var chatRoom = document.getElementById('chat-room');
            var messageElement = document.createElement('div');
            messageElement.className = 'message';
            if (isPrivate) {
                messageElement.className += ' from-me';
            } else {
                messageElement.className += ' from-others';
            }
            messageElement.appendChild(document.createTextNode(messageOutput.from + ": " + messageOutput.text));
            chatRoom.appendChild(messageElement);
            chatRoom.scrollTop = chatRoom.scrollHeight;
        }

        $(document).ready(function() {
            connect();
        });
    </script>
</head>
<body>
    <div id="chat-room"></div>
    <input type="text" id="recipient" placeholder="Recipient">
    <input type="text" id="text" placeholder="Type a message">
    <button onclick="sendMessage()">Send</button>
</body>
</html>