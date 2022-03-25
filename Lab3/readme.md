#LAB 3 TEAM ARA ARA
This lab is an encrypter chat GUI which allows the user to:
- create a key 
- import a key
- define a UDP destination 
- Transmit and receive the message, allowing the cyphered message to be seen

HOW TO COMPILE
To compile the program you must access the initial folder "Lab 3" and then access the folder "server" 
to initialize the chat server you must type python chat_server.py
To initialize the client you must type python chat_client.py
The DBPATH,HOST and PORT are specified and can be modified on the filechat_server.py
Right now, the configuration is the following and can work on each computer, as the dbpath is cannot be changed, 
the host is the localhost and the port can be easily modified.
DBPATH = 'database/userinfo.db'
HOST = 'localhost'
PORT = 12345
BUFSIZ = 1024
ADDR = (HOST, PORT)
AD = {}
pub_keys = {}
received = b""

After compiling both the server and clients, you must login into an account or create a new one.
 The following accounts are the ones you can test the code on 
 username: gis
 password: abc

 username: a
 password ""

 if you would like to create and account, enter the desired username and password and click the register button,
 then, login with the new credentials

 Now the clients can send messages to each other and the server will recieve those messages and show the encryption.

 TOOL MANUAL
In order for the chat to be encrypted, you must open run two clients besides the server. 


Whenever a message is sent, the server will be able to see the encryption of the message in the terminal, 
encrypted by the function turn_pub_key_to_string(self, pub_key) and assemble_pub_key_from_string(self, pub_key):
once the message is sent to the server, the server joins each part of the message and show the encryption in the terminal, usying RSA encryption.

Then, the message is shown to the opposit client.




