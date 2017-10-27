## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:baa750fc2e08d2f2ba708ea8720c2c5b96846dfbae56c4b5d359bb23bf787426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats-streaming@sha256:f6c5f5ae04ef62292d1ea4a81e2d24428222785b928baa3ea5d5cb90068f7d03
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353676079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743c60ed3400e3e2c6b44d18030bbb7f6bb170291ce0ea942be6c47d5cda13f6`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Tue, 10 Oct 2017 23:34:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 26 Oct 2017 23:22:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 26 Oct 2017 23:22:52 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Thu, 26 Oct 2017 23:22:55 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 26 Oct 2017 23:22:58 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1b81c984f5c532aac6553185533b3b8aedb0c8096ea7477fb86499780ccc30f4`  
		Last Modified: Tue, 10 Oct 2017 23:35:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f785f0115e74e36f3a2a26b0e7d0a4543372af2e1b0848525308821a6b963eb5`  
		Last Modified: Thu, 26 Oct 2017 23:23:18 GMT  
		Size: 1.4 KB (1380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a8b23fd43fb8e0171ecbba045789b434e956b32bac2aab0933ccfa09d67824`  
		Last Modified: Thu, 26 Oct 2017 23:23:16 GMT  
		Size: 3.2 MB (3163914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b8eb9156e05465f25f055ceaaf34543639916c5090a2509e4d7758ea6a3d1`  
		Last Modified: Thu, 26 Oct 2017 23:23:15 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95096714ecae38d704b85e05a502d762652a8aea5a3b2b4c5f1e1fa5bd9740b5`  
		Last Modified: Thu, 26 Oct 2017 23:23:15 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
