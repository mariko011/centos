## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:115d0a180f6d401a630431bebf1e28fd7d798bd59d6f613bf862dd008ca2b061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:08b5c9f184967b4fed530690cbbbcf5226bf432e1095a09b8fd98f2a2097ccd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5934992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba925613ee688bf51482770c729a737e14bb2b719a5f5a9b566cb34109eb89a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:26 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Sat, 04 Nov 2017 13:09:27 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:27 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:27 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:28 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67477e0fb4ec2a4aa8cdc0f2abeba958768801491fc3de648bac37c69c72762c`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89834cc8d5a8dfe61407579d5a9e1c01fdfc7af7154c6448205efef80ef6b684`  
		Last Modified: Sat, 04 Nov 2017 13:10:38 GMT  
		Size: 3.9 MB (3941580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3044ed87107278993b694d8ebc282357bac57c7c84a92aadbe0b456a7d44345`  
		Last Modified: Sat, 04 Nov 2017 13:10:35 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ada9d8a6b1c860691cf44dade03f961f8933a28b76d7985a4ad2bf76d52b1`  
		Last Modified: Sat, 04 Nov 2017 13:10:36 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
