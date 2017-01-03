## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:11017cf64128bdaf19f2d6bfe367d2b8f27695dab6378d738053f1be92ef3c08
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e90413a0107f4dda78dce94289b99614c295bd94bfdc50604b49f5ae1e6c8d9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:57 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:58 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:58 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:54:59 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:00 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca7cf7bea41f3329afc31f9411c43c0106cff602b29009d3c8998327f28b944`  
		Last Modified: Tue, 03 Jan 2017 17:57:36 GMT  
		Size: 5.5 MB (5465096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b17cfb112bbec517cfdf73b034b3ab71478d49d9f1cabc3c7a072edff6f2d7`  
		Last Modified: Tue, 03 Jan 2017 17:57:34 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63cfccfb3e339b7802af4b25857f191fdadb81460162d663e6b0409ec0a433d`  
		Last Modified: Tue, 03 Jan 2017 17:57:35 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
