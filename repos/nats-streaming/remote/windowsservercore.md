## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:83cd6c3a394718f6eb95cdbfb747911b5b0a9f705adae4b40bc09dd5c465dcbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:18f40da81c2a4b99fb0257095e36889bbf0e12caed7ea74a80bb6e0c6ad71c04
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5377462322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea490e75c1425bb6d18c86e4023556f38b0d99801b9cc1db9619e2a8e02839a9`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:36 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 04 Jan 2018 23:30:38 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Thu, 04 Jan 2018 23:30:39 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 04 Jan 2018 23:30:40 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1bc3015f4327e05866390ff008dd5ecb749bfffb1ca922cb3e2ae20b02299`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23c45eb459bcbb1512148ca57794565bbfd80933ba9c13f0cf1e8aada427647`  
		Last Modified: Thu, 04 Jan 2018 23:31:03 GMT  
		Size: 3.5 MB (3452202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b267d48ca50043e60e978c1c9160b877157e5d54ad4713c5737846eac1ac28a`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5566999812fbe2adf1446ba31b0ece37055fee34a11d0f283aefea6b90f25b`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
