## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:973691e34c30aeda65060c096778167cf9a47917c93c0a89fbd55da38c8c3821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats-streaming@sha256:0bf12f751150dcde23595452241352b74401f606189b4d833c65665500a1648a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353675953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e7116ef620a0b0ba8a30912dd6bec2e4351e1d23a71333bb41d852b6c8a11f`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:44:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 01 Nov 2017 18:44:43 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Wed, 01 Nov 2017 18:44:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:44:44 GMT
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
	-	`sha256:560588cec88cfe346ccddcff7e035ffffef9246a74e152c048512977e6bfe3b7`  
		Last Modified: Wed, 01 Nov 2017 18:43:57 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8f9f7fb8077236aede72cff3ead7f5a54d3ace22da7fa78ffdaa3279d5a364`  
		Last Modified: Wed, 01 Nov 2017 18:45:10 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f843a9d429a4070afd24286ec3df980930845a0dff262f39f8b52ee750b322`  
		Last Modified: Wed, 01 Nov 2017 18:45:08 GMT  
		Size: 3.2 MB (3163883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfba37e1c32b553265cb47d7ba50f49929ab4f875aa175628c00a7a649a2347`  
		Last Modified: Wed, 01 Nov 2017 18:45:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ce39087beaf90443ead82154495eb8b9339f4748957e3413f9d3d1495f82bc`  
		Last Modified: Wed, 01 Nov 2017 18:45:09 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
