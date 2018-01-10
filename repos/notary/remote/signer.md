## `notary:signer`

```console
$ docker pull notary@sha256:2305c9e9438bf28af9334316d5fc7490d694eadba6016cf93fdefe322015964b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:d5369c42f758a7a85b24f1e51c60c341d913423ceaf6f0208619896e86c43317
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99f62d548b66416037df94e3456cb3c07a49ff5fced25b43d3d56145fb30442`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:12 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:06:13 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:06:14 GMT
USER [notary]
# Wed, 10 Jan 2018 00:06:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:06:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:06:15 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56810ad6d204a86850ea588fbe8b8243fe9e30d17f4a0fa08df10b2e9898467a`  
		Last Modified: Wed, 10 Jan 2018 00:26:48 GMT  
		Size: 3.7 MB (3650998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d8b6d6e4b86d370ba234de5af7dbbd170a7f0d50fc037775a422dce9ec988`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c0719479a057a26cac8a9d9eb0c55c60238330c30e7348c1a003ff9ec11fb8`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
