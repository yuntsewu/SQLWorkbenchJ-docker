FROM consol/centos-xfce-vnc

RUN mkdir /root/Downloads
RUN mkdir /root/Applications

RUN yum -y update && yum -y install unzip
ADD http://www.sql-workbench.net/Workbench-Build121.zip /root/Downloads/wb.zip
ADD https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC42-1.1.17.1017.jar /root/Downloads/

RUN unzip /root/Downloads/wb.zip -d /root/Applications/Workbench
RUN chmod +x /root/Applications/Workbench/sqlworkbench.sh

RUN ln -s /root/Applications/Workbench/sqlworkbench.sh /usr/bin/sqlworkbench
RUN ln -s /root/Applications/Workbench/sqlworkbench.sh /root/sqlworkbench

ADD ./SQLWorkbench.desktop /usr/share/applications

CMD ["/usr/bin/sqlworkbench"]
