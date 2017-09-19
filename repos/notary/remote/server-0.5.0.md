## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:6f3dd061b9d3e1f97d3373b54fc88afededd3554407a6903f80b8f02dee89fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:3d5e48f4e69bb6bebf8a47b71fc7e109be55f2d5fa74ccbe0bf35cec58f5dfd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa111f2d2aa59693464d5c50af7dac911abae42e460af31fe30990c0f08d3b99`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:23 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:24 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1f48933f2c5863147d07154cca547f31c5a5048108b94fed74d327680d96c`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece956332e7138081cf810bf0b74ed48df5834ee3620cc8860d879b37aa013e1`  
		Last Modified: Tue, 19 Sep 2017 00:32:21 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472ebcf93fd22dfea4e57835f66f67a918a1380c8d54238a53af3cb77815023`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e6f78ca080d4228bda19a67b2534ba184c5cfbe74231b24539c90c2739b43d`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
