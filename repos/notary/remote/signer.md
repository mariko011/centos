## `notary:signer`

```console
$ docker pull notary@sha256:7e1ca1395adc8f88d4c81a37c640a49c1dd4f24b56c14f6a12ebd2dc016920ea
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac06a6f1d909528696c4ddca8c1cbd03005d384f3f196f626b4525a851310bdc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:31 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:32 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:32 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b77e5804e206012295a51fc39e0c919cbf4ebd5a2260224195c77fcfc2b853a`  
		Last Modified: Sat, 04 Mar 2017 05:26:38 GMT  
		Size: 3.6 MB (3603963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4156c62799b179e2682d6c4b5d3c5d468496601fba83f85bb8f3b0b28c160d38`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1f710125d469be25a66db7383fb355a41c73f7e9fc2f355b59e3b74ad355a`  
		Last Modified: Sat, 04 Mar 2017 05:26:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
