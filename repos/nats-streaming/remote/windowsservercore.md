## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:db9eef9f1e1b4f8bf536bcde49f441775ab3756ce2a7859be88b0691c1eae3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:646c9b47e68b67887e5b6d46e870a3bde6631b85892ab94dd2f8538e8b58047b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5364983904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65541e47dfea4926b2afde6f2a1e5f3a9db515e2b7dc316170de10a9bca563ae`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:30:05 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:30:06 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 12 Dec 2017 23:30:08 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Tue, 12 Dec 2017 23:30:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 12 Dec 2017 23:30:10 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f003d10ec430dbd4cbb310f041110a49399acb839a58bbf90e01385955ddab9`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03a62127fe41e7255d5308664da342a200a03ceef2fe76f64243ab91aaa5f5c`  
		Last Modified: Tue, 12 Dec 2017 23:30:31 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b22a4dedcbfb3ad094b5a085b7932ccfaed139657ba195daf63662551ed12ea`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 3.2 MB (3163878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b658c93e18c2d0b27e6ae7e95d06f0acf0ff66d62ccb7f59ea412f5492df6a`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c2c8a5e394e21b294b40d0bd487712286315c476b32b7fef9529c5ffd87441`  
		Last Modified: Tue, 12 Dec 2017 23:30:31 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
