## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:f9d6e91ba7e6ca6c162709ff721b952f671ec3e059d88b2b960e23ae9320711b
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5539376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c3a7d856398860abb361777222de5f359db131a2fcd115ce29e826b5fcc72`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:38:45 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 10 May 2017 22:38:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:38:47 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:38:49 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:38:50 GMT
USER [notary]
# Wed, 10 May 2017 22:38:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:38:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:38:52 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd80f5cc533c584b0fc8c527f5d486a3f42cb8e30867fec13406db7bb81d7500`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 3.6 MB (3569557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36609556c44700cbab0081896525e055126d377552da8bd069b297be666d9be0`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1642e4cae75cc7d2ac15ceca79cacc1fcc9065c36909f10fffa074172bb3bd3a`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
