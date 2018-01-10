## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:1817ab42e6532aa9fa42a36dc88e6c558d18944638d8738dc6d64627f91c6d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:73efefa4e5bdc50683e72f7392ede0ef92f3b89a82eac468ccfe92d5d9714e3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4103a37d1a9b6b837aa1cc43a0dd903f237ce2fbcd2c78f33e66b1e7cf891b4b`
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
# Wed, 10 Jan 2018 00:20:04 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 10 Jan 2018 00:20:05 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:20:05 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:20:07 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:20:07 GMT
USER [notary]
# Wed, 10 Jan 2018 00:20:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:20:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:20:08 GMT
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
	-	`sha256:775a09c893dc1fc20f96b5e9eaff8c7ae086146ba56d74ac93fa4722f8e3e43f`  
		Last Modified: Wed, 10 Jan 2018 00:44:49 GMT  
		Size: 5.5 MB (5543269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4179268e8e98e03fdc8b3d849eef38e4e11d9a18b29727d9756a65c4a12d1466`  
		Last Modified: Wed, 10 Jan 2018 00:44:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7185f2560a404410da2b28e91d5e17eb278f4c32155cc546a4b2ce5b9908164a`  
		Last Modified: Wed, 10 Jan 2018 00:44:47 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
