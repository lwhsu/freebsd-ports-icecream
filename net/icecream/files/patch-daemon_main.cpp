--- daemon/main.cpp.orig	2018-12-12 09:36:28 UTC
+++ daemon/main.cpp
@@ -581,7 +581,7 @@ bool Daemon::setup_listen_fds()
             myaddr.sin_port = htons(daemon_port);
             myaddr.sin_addr.s_addr = INADDR_ANY;
 
-            if (bind(tcp_listen_fd, (struct sockaddr *)&myaddr,
+            if (::bind(tcp_listen_fd, (struct sockaddr *)&myaddr,
                      sizeof(myaddr)) < 0) {
                 log_perror("bind()");
                 sleep(2);
@@ -665,7 +665,7 @@ bool Daemon::setup_listen_fds()
         }
     }
 
-    if (bind(unix_listen_fd, (struct sockaddr*)&myaddr, sizeof(myaddr)) < 0) {
+    if (::bind(unix_listen_fd, (struct sockaddr*)&myaddr, sizeof(myaddr)) < 0) {
         log_perror("bind()");
 
         if (reset_umask) {
