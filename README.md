# docker-osgrid

FORKED FROM https://github.com/QuantumObject/docker-opensimulator

Docker container for [OSgrid OpenSimulator][3]

"OpenSimulator is an open source multi-platform, multi-user 3D application server. It can be used to create a virtual environment (or world) which can be accessed through a variety of clients, on multiple protocols. It also has an optional facility (the Hypergrid) to allow users to visit other OpenSimulator installations across the web from their 'home' OpenSimulator installation. In this way, it is the basis of a nascent distributed Metaverse."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d --name docker-osgrid -p 9000:9000 -p 9000:9000/udp murf66/docker-osgrid
 
## For the first configuration :

     $ docker exec -it docker-osgrid after_install.sh

Them respond the questions relate to virtual word : 

 - New region name []:     ==> need to entry region name that you want for it .(need to remember it).

 - RegionUUID [29923331-dddd-4acc-a3d8-46d3c129b6e3]:     ==> press enter key to keep the same.

 - Region Location [1000,1000]:                           ==> get a location from http://www.osgrid.org/index.php/opencoordinates

 - Internal IP address [0.0.0.0]:                         ==> press enter key to keep the same.

 - Internal port [9000]:                                  ==> press enter key to keep the same.

 - Allow alternate ports [False]:                         ==> press enter key to keep the same.

 - External host name [SYSTEMIP]:   ==> need to entry the external ip or your http address don't include the port.

 - New estate name [My Estate]:     ==> press enter or change it. 

 - Estate owner first name [Test]:  ==> use your osgrid firstname

 - Estate owner last name [User]:   ==> use your osgrid lastname

 - Password:                       ==> use your osgrid password

 - Email:                          ==> ..... 

 - User ID [6edd775a-8c1e-4a43-ad16-36df2af3ea0c]:  ==> press enter key to keep the same.

After some process it will show:

Region (.....) # 

 - 'quit' command to continue.


## Use viewer to check the virtual world create by OpenSimulator:

Imprudence viewer [http://wiki.kokuaviewer.org/wiki/Imprudence:Downloads][6]

Grid Manager  to add your virtual world to the application ...

Where:

 - grid name ==> it will be region name

 - login URL ==>  http://external_ip:9000/  

 - login page ==> http://external_ip:9000/?method=login

Everything else no important at this moment. Press apply and then use info to log in.

## More Info

About OpenSimulator [www.opensimulator.org][1]

To help improve this container [quantumobject/docker-opensimulator][5]

For additional info about us and our projects check our site [www.quantumobject.org][7]

[1]:http://www.opensimulator.org/
[2]:https://www.docker.com
[3]:http://www.osgrid.org/index.php/downloads
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-opensimulator
[6]:http://wiki.kokuaviewer.org/wiki/Imprudence:Downloads
[7]:https://www.quantumobject.org/
