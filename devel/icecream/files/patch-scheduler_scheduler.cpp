--- scheduler/scheduler.cpp.orig	2018-12-12 09:36:59 UTC
+++ scheduler/scheduler.cpp
@@ -1754,7 +1754,7 @@ static int open_broad_listener(int port)
     myaddr.sin_port = htons(port);
     myaddr.sin_addr.s_addr = INADDR_ANY;
 
-    if (bind(listen_fd, (struct sockaddr *) &myaddr, sizeof(myaddr)) < 0) {
+    if (::bind(listen_fd, (struct sockaddr *) &myaddr, sizeof(myaddr)) < 0) {
         log_perror("bind()");
         return -1;
     }
@@ -1791,7 +1791,7 @@ static int open_tcp_listener(short port)
     myaddr.sin_port = htons(port);
     myaddr.sin_addr.s_addr = INADDR_ANY;
 
-    if (bind(fd, (struct sockaddr *) &myaddr, sizeof(myaddr)) < 0) {
+    if (::bind(fd, (struct sockaddr *) &myaddr, sizeof(myaddr)) < 0) {
         log_perror("bind()");
         return -1;
     }
