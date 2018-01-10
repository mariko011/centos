## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:60dae48e06933c3d1f7f13213e07c3908d60e09aafa04faf2b01bc1a87073e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:5b950aadd5e1db296c2bbcc162e1ff1f89bbfdc1567e76ff13406dd33af3941f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5636999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96ae35e06bf621ed2baba4f39a82427733ff879eb60977445e574099077d9ad`
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
# Wed, 10 Jan 2018 00:18:49 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 10 Jan 2018 00:18:49 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:18:50 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:18:50 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:18:51 GMT
USER [notary]
# Wed, 10 Jan 2018 00:18:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:18:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:18:51 GMT
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
	-	`sha256:485727cd9e034d60dea258202b816bada0b75122ff1e8bcefb3e61b74fc9705c`  
		Last Modified: Wed, 10 Jan 2018 00:43:13 GMT  
		Size: 3.6 MB (3569543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6785a36b0688e7dcd9554e288df3730a27f5f736b8337d22f2cc4586856accec`  
		Last Modified: Wed, 10 Jan 2018 00:43:10 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af9595d98f577077b1f4886fa642c7b79681ee1b25d4c229a3fff9d6fbd96c0`  
		Last Modified: Wed, 10 Jan 2018 00:43:11 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
