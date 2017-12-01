## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:3620d6c71499375590d4b1ec47c7c1d6f461e0dbba2367aa8a257a8e65b0db27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:2bd91c39f95502c0172c3e72ea3f893df01ca579c39503357f239b0f6b9dd577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6642790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b965d9595113e06bbbd0978b69ffe6b51bae77f25f580358c5edada0953384`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:25:20 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:25:20 GMT
USER [notary]
# Fri, 01 Dec 2017 21:25:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:25:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:25:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9c47736b64ba2f61def74578e36b3c923dbe8dbabac6a1e32f0497d50bd1b`  
		Last Modified: Fri, 01 Dec 2017 21:42:26 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2669bcfdb65fb34d5ce7cd1ef012a6c1b96a89e0536d72127831867564edd062`  
		Last Modified: Fri, 01 Dec 2017 21:42:24 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5369edefa4c338439a106d1eb1f1f632707d3d57eac14e544d9ac7795245ae5`  
		Last Modified: Fri, 01 Dec 2017 21:42:24 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
