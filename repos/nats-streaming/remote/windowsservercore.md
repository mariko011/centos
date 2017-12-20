## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:91463c9cfd67684e886935bae6a64206a101786e52d4520fe9aa4437a3e16dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:47a9d00148828292b085f132049c1956ea5dc7da71d79452956dab21152b73a5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5365272237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279f9c4fc0d12eef257201b9fb8441f2e1bdfd4f9309631cdfff606d5d25c907`
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
# Tue, 19 Dec 2017 23:20:12 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:14 GMT
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
	-	`sha256:ac7b73cded8fb91d4caf949f454586b7fcb709333e30cfea2f8418d9a2f991cc`  
		Last Modified: Tue, 19 Dec 2017 23:20:35 GMT  
		Size: 3.5 MB (3452206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c454c6ca23eb882275164919a755215271df9c0117be3b04d4d4ab5b5eefa8`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41cf6bb6274a36681336595542e0154621c0ced610b15bf6646312a68cd02e4`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
