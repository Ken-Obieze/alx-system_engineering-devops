# Web infrastructure design

## Introduction
This project is aimed at understanding the infrastructure that powers modern wibesites and being able to implemnent those infrastructure.
The task in the project focuses on whiteboarding, which is a very crucial tool when utilised appropriately by developers.

What is a server?
A server:

This is a piece of computer hardware or software that provides functionality for other programs or devices.

Roles of the server:

The role of the server is to share data, resources and distribute work.
The server also helps in finding the correct IP address of the site requested by the user.
Domain Name:

A domain name (often simply called a domain) is an easy-to-remember name that’s associated with a physical IP address on the Internet. It’s the unique name that appears after the @sign-in email addresses, and after www. in web addresses.

What is the role of the domain name;

The Domain name enables users to access Websites, without having to know the associated IP addresses of the websites.

DNS:

The Domain Name System (DNS) is a system used to convert a computer’s hostname into an IP on the Internet. For example, if a computer needs to communicate with the webserver example.com, your computer needs the IP address of the webserver. It is the job of the DNS to convert the hostname to the IP address of the webserver. It is sometimes called the Internet’s telephone book because it converts a Website’s name that people know to a number that the Internet actually uses.

What type of DNS record www is in www.foobar.com

www is a CNAME(Canonical Name) DNS record-type in www.foobar.com since it also points to the same IP address as foobar.comand if the IP address changes we can only record changes in the DNS A record of foobar.com.

Web server:

A web server is a computer that runs websites. It’s a computer program that distributes web pages as they are requisitioned. The basic objective of the webserver is to store, process, and deliver web pages to users. This intercommunication is done using Hypertext Transfer Protocol (HTTP).

The role of the webserver

The role of the webserver is to accept requests made by the browser through HTTP, process the requests by responding with HTML content.

The role of the application server:

The role of the application server is to act as a host (or container) for the user’s business logic while facilitating access to and performance of the business application.

The role of the database:

A database is a software used for storing data in our application.

The role of the database is to allow the management, creation, updating, and retrieval of records. The Database also gives structure to business information.

Issues That Can Affect A Simple Web Stack:

1. SPOF;

Single Point Of Failure (SPOF), is a part of the system that, if it fails the whole entire system stops from working.

The above infrastructure has no redundancy that can help in avoiding SPOFs, hence, any single failure in any part of the system will cause all the system to stop.

2. Downtime when maintenance needed (like deploying new code web server needs to be restarted);

The Infrastructure above, downtime will occur because we only have one server and one database, that is used to make the deployment and maintenance hence no way users will access the website in that period.

3. Cannot scale if too much incoming traffic;

The above infrastructure cannot scale if there’s too much incoming traffic because no second server in the system to share loads and the system will be overloaded.

Here, We have added a load balancer and another server, Why? Well, when traffic starts to grow, and I mean really GROW, When millions of users at once are making requests for websites like Google and Facebook, One web server won’t be able to handle all these corresponding requests, so we have to use two (or many more) servers. A new problem arises — when a user makes a request, will the content come from webserver 1 or web server 2? For this exact reason, these types of websites have a Load Balancer (which is actually also a server).

Think of a Load Balancer like a traffic cop — two roads that lead to the same destination, and the cop knows how to efficiently direct the incoming traffic, guiding with his hand which path to take.

The purpose of the Load Balancer is to distribute incoming traffic across multiple servers, which increases the efficiency, reliability, and availability of your site. If one web server crashes all of a sudden, this special server(Load balancer) automatically redirects the traffic to the remaining web servers.

The Load Balancer has different algorithms for how it divides up the workload, such as:

Round Robin (most common) — Requests are distributed across the group of servers sequentially. Request 1 is directed to server 1, request 2 to server 2, and so forth.
Least Connections — Before redirecting a request to a server, the Load Balancer computes which server has the least connections, and then sends the request to there.
IP Hash — The IP address of the client is used to determine which server the request will be directed to. For example, all IP addresses from 100.100.100.100–400.400.400.400 will be sent to server 3. (IP Hash load balancing uses an algorithm that takes the source and destination IP address of the client and server to generate a unique hash key. This key is used to allocate the client to a particular server. They are assigned individually as they connect to the server and once assigned a certain server, the Client will always connect to that particular server)
How our Load-balancer Enables an active-active or active-passive setup

In an active-passive configuration, the server load balancer recognizes a failed node and redirects traffic to the next available node. In an active-active configuration, the load balancer spreads out the workload’s traffic among multiple nodes.

How a database Primary-Replica (Master-Slave) cluster works

Master-slave replication enables data from one database server (the master) to be replicated to one or more other database servers (the slaves). The master logs the updates, which then ripple through to the slaves. If the changes are made to the master and slave at the same time, it is synchronous. The difference between the Primary node and the Replica node in regard to the application is that-, the primary node is regarded as the authoritative source, and the replica node (also known as slave) databases are synchronized to it(Master).

What is an SSL Certificate?
The SSL certificate’s job is to initiate secure sessions with the user’s browser via the secure sockets layer (SSL) protocol. This secure connection cannot be established without the SSL certificate, which digitally connects company information to a cryptographic key. Any organization that engages in e-commerce, for instance, must have an SSL certificate on its web server to ensure the safety of customer and company information, as well as the security of financial transactions therein.

How SSL Certificate Work:

A browser attempts to connect to a website (i.e. a web server) secured with SSL. The browser requests that the web server identify itself.
The web server sends the browser a copy of its SSL certificate.
The browser checks to see whether or not it trusts the SSL certificate. If so, it sends a message to the webserver.
The web server sends back a digitally signed acknowledgment to start an SSL encrypted session.
Encrypted data is shared between the browser and the webserver.
What do you stand to gain by using SSL certificates?

Utilize HTTPS, which elicits a stronger Google ranking
Create safer experiences for your customers
Build customer trust and improve conversions
Protect both customer and internal data
Encrypt browser-to-server and server-to-server communication
Increase the security of your mobile and cloud apps
What Is Infrastructure Monitoring?
Infrastructure Monitoring is used to collect health and performance data from servers, virtual machines, containers, databases, and other backend components in a tech stack. Engineers can use an infrastructure monitoring tool to visualize, analyze, and alert on metrics and understand whether a backend issue is impacting users.

How Infrastructure Monitoring Works:

It tracks the availability, performance, and resource utilization of hosts, containers, and other backend components. Engineers typically install software, called an agent, on their hosts. i.e physical servers, or virtual machines which use the resources of a physical server. The agent collects infrastructure metrics from hosts and sends the data to a monitoring platform for analysis and visualization. Infrastructure monitoring provides visibility into the health of backend components that run the applications, ensuring that critical services are available for users and that they work as expected.

Infrastructure monitoring provides visibility across multiple layers of the tech stack, including the hardware, the operating System(OS), and the application server. The hardware layer includes the physical components, such as memory chips and the processor, that your backend components use to function.

What are Firewalls for?
Firewalls are software or hardware that work as a filtration system for the data attempting to enter your computer or network. They scan packets for malicious code or attack vectors that have already been identified as established threats. Should a data packet be flagged and determined to be a security risk, the firewall prevents it from entering the network or reaching your computer.
