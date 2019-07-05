FROM ubuntu:16.04
RUN apt update -y && apt install apache2 -y

RUN apt install mariadb-server mariadb-client -y && apt install php libapache2-mod-php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-zip php-curl -y

RUN echo '<html> <body> <h1>Hello world!</h1> </body> </html>' > /var/www/html/index.html 

CMD /usr/sbin/apache2ctl -D FOREGROUND 
