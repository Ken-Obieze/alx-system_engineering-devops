What is a server?
A server is a piece of computer hardware or software that provides services for other programs. Hardware servers have an Operating system just like your normal computer does, but extended functionality.
Hardware servers are referred to as physical servers, while software servers are virtual.

Web Server
Hosts web pages. A web server is what makes the World Wide Web possible. Each website has one or more web servers. Also, each server can host multiple websites.
Hosts web apps (computer programs that run inside a web browser) allowing users in the network to run and use them, without having to install a copy on their own computers. Unlike what the name might imply, these servers do not need to be part of the World Wide Web; any local network would do.
Database
a database is an organized collection of data stored and accessed electronically. Small databases can be stored on a file system, while large databases are hosted on computer clusters or cloud storage.

DNS: 
The Domain Name System (DNS) is a system used to convert a computer’s hostname into an IP on the Internet. For example, if a computer needs to communicate with the webserver example.com, your computer needs the IP address of the webserver. It is the job of the DNS to convert the hostname to the IP address of the webserver. It is sometimes called the Internet’s telephone book because it converts a Website’s name that people know to a number that the Internet actually uses.
What type of DNS record www is in www.foobar.com
 
The DNS record type used is A type. Because www.foobar.com since was resolved to IP address 8.8.8.8 
 
Issues That Can Affect A Simple Web Stack: 
* SPOF; Single Point Of Failure (SPOF), is a part of the system that, if it fails the whole entire system stops from working.
 The above infrastructure has no redundancy that can help in avoiding SPOFs, hence, any single failure in any part of the system will cause all the system to stop.
 
* Downtime when maintenance needed (like deploying new code web server needs to be restarted); The Infrastructure above, downtime will occur because we only have one server and one database, that is used to make the deployment and maintenance hence no way users will access the website in that period.
 
* Cannot scale if too much incoming traffic; The above infrastructure cannot scale if there’s too much incoming traffic because no second server in the system to share loads and the system will be overloaded.

