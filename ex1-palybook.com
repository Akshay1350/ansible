-
  name: this is a code for installing Apache web server
  hosts: demo
  become: yes
  tasks:
   - name: Apache Webserver Installation
     yum:
       name: httpd
       state: present


   -  name: this code is to start webserver
      service:
        name: httpd
        state: started
 
