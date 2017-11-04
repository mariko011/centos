## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:92e2d9e426d6a1bf121c51d346ba3bf6647dcae64c49756e3c63acdd171ec83b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:3186472111bed876ba4ddcb8a279b1665a6c855434ce1ece7227bc1c387a65db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5562890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c072ad30b206a95caf5c189cebcb2758db2c47b8d329f946f51a9d1a9eb466`
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
# Sat, 04 Nov 2017 13:09:31 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:32 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:32 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:32 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:33 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:33 GMT
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
	-	`sha256:f6a2b65f089c1bdc2f186b31dafe5bc6c9f90624e6e6932b86e1e030082010a0`  
		Last Modified: Sat, 04 Nov 2017 13:10:47 GMT  
		Size: 3.6 MB (3569547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4842b560e685f9ee3f7f2ccea0e0b12200ef3d8dc89bb668f717c2d8da3a6f9`  
		Last Modified: Sat, 04 Nov 2017 13:10:45 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57e4252188c181d7b301c24400aa25578103fa2a7348cf78328d407233ef83c`  
		Last Modified: Sat, 04 Nov 2017 13:10:45 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
