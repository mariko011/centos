## `nats:nanoserver`

```console
$ docker pull nats@sha256:db4c75befa5d163cd6e018c72b517c35f194c0637da42d01f90d0eebb893d130
```

-	Platforms:
	-	windows; amd64

### `nats:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384985767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b583ba20de70b76b4555a62c7e0e1394cd5ed9caaefabcd6823827f40605693`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 19:02:54 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 28 Jul 2017 19:02:56 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Fri, 28 Jul 2017 19:02:59 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Fri, 28 Jul 2017 19:03:02 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 28 Jul 2017 19:03:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 28 Jul 2017 19:03:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 28 Jul 2017 19:03:07 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7c016c2c386086fe77c5fe384fc8adab744f2d79b553c8da4344de8225f7ef4`  
		Last Modified: Fri, 28 Jul 2017 19:03:40 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda59bf0dd2dd1bf2e009107f63faba8318ddee15cfa88194c4f81fb392eda64`  
		Last Modified: Fri, 28 Jul 2017 19:03:39 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da327657a43a62bc739836e43f9d3518b914a845de8e235a07f9aa9a5861545`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 2.1 MB (2131036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692427057b6f5b7528eaced3c13823156bed9c630ef5925724e6ac6a323d8af`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043feca9fb5084dd9e1889348cdfed41751a43dc2a7197777f1f1b14e1da4ea4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3fd2dfcbf5ca1bb2a4676e62cf44804ff82a78fb344a9781bfa98ab448ae7c`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dfd77cf608f29353b368a87158aefb30ed05b042198d5b60a5e2bb49d6c6c4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
