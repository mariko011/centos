## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:9e21f9788f0f73b8a22a2b269355d426a8a9ea35d673f4880b4f6f80eb39d5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:64a54e9d1d161c769c543a4fcb30c645713a95a6762da5bfd72a2cf3bae373fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7536611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9d0a46fbb6985476089f864528cf2815d56745f064403a704f0ee260b25f6a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:59 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:59 GMT
USER [notary]
# Sat, 04 Nov 2017 13:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:10:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:10:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae83ffd8835c284e7417c01e3d80248a243655daeaefd8a51f609596aa04ef5`  
		Last Modified: Sat, 04 Nov 2017 13:11:27 GMT  
		Size: 5.5 MB (5543264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c85a0dc00d770b3295f5e62f181699455c1a2dfd2240af8eb276252bf1f295f`  
		Last Modified: Sat, 04 Nov 2017 13:11:24 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bbcbae10a5d6321a9ff7af2c1f6db0ad88b830c0219303ea820c32f4c94af0`  
		Last Modified: Sat, 04 Nov 2017 13:11:25 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
