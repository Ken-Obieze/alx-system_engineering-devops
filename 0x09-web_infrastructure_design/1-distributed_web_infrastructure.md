A load Balancer
The HAProxy load balancer is configured with the Round Robin distribution algorithm. This algorithm works by using each server behind the load balancer in turns, according to their weights. The load balancing algorith allows server weights to be adjusted on the go.

The setup enabled by the load-balancer.
The HAProxy load-balancer is enabling an Active-Passive setup rather than an Active-Active setup. In an Active-Active setup, the load balancer distributes workloads across all nodes in order to prevent any single node from getting overloaded. There is a considerable performance boost because of the increased number of nodes available.

How a database Primary-Replica (Master-Slave) cluster works.
(MySQL) Master Primary-Replica setup configures one server to act as the Primary server and the other server to act as a Replica of the Primary server. However, the Primary server is capable of performing read/write requests whilst the Replica server is only capable of performing read requests. Data is synchronized between the Primary and Replica servers whenever the Primary server executes a write operation.
The difference between the Primary node and the Replica node in regard to the application.

The Primary node is responsible for all the write operations the site needs whilst the Replica node is capable of processing read operations, which decreases the read traffic to the Primary node.

Issues With This Infrastructure
* There are multiple SPOF (Single Point Of Failure). The Load balancer, the data base , application server and the web server are all single point of failure without redundacy. If the load balancer or any component in our infrastructure were to fail, our system fails. Also is the site is down for maintenance or is being restarted, the whole infrastructure is affected.
* Security issues.
The data transmitted over the network isn't encrypted using an SSL certificate so hackers can spy on the network. There is no way of blocking unauthorized IPs since there's no firewall installed on any server.
* No monitoring.
We have no way of knowing the status of each server since they're not being monitored.
