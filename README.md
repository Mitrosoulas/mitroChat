# mitroChat
Simple Ruby Chat app

Client-Server architecture based Chat application.
One user is the room "Master" and the other is the room "Slave". Basically Master is the Server and Slave is the Client.
Communication happens over port 4444. Master boots the server and the client uses the hostname or public ip of the master to connect to him. 
  
Each user can send or receive a message. The main thread handles the sending part. An extra thread listens for messages and prints them on screen. 
