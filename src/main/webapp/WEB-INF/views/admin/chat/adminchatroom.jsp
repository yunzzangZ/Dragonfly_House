<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Chat Room</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/chat.css">
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client/dist/sockjs.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/stompjs/lib/stomp.min.js"></script>
</head>
<body>
    <div class="chat-container">
        <div id="chat">
            <div id="chat-messages"></div>
        </div>
        <form id="messageForm">
            <input type="text" id="message" placeholder="Type a message..."/>
            <button type="submit">Send</button>
        </form>
    </div>
    <script>
        var stompClient = null;

        function connect() {
            var socket = new SockJS('${pageContext.request.contextPath}/ws');
            stompClient = Stomp.over(socket);

            stompClient.connect({}, onConnected, onError);
        }

        function onConnected() {
            stompClient.subscribe('/topic/public', onMessageReceived);
            stompClient.send("/app/chat.addUser", {}, JSON.stringify({sender: 'admin', type: 'JOIN'}));
        }

        function onError(error) {
            console.error('Error: ' + error);
        }

        function onMessageReceived(payload) {
            var message = JSON.parse(payload.body);
            var messageElement = document.createElement('div');
            messageElement.innerText = message.sender + ": " + message.content;
            document.getElementById('chat-messages').appendChild(messageElement);
        }

        document.getElementById('messageForm').addEventListener('submit', function(e) {
            e.preventDefault();
            var messageContent = document.getElementById('message').value;
            stompClient.send("/app/chat.sendMessage", {}, JSON.stringify({sender: 'admin', content: messageContent, type: 'CHAT'}));
            document.getElementById('message').value = '';
        });

        connect();
    </script>
</body>
</html>
