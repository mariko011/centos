## `notary:server`

```console
$ docker pull notary@sha256:e412b19c0e089393117e541624b69d28088dd52806b53bbc421c9dde36be645b
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80592b31e66815de262769be3620fcba1a7540c01d44e6ed3cd077390c9aca91`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:50:59 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:00 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:01 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16c0f5516aa03257b9250d60eca1946689f8a502302fee75c6d5a7739d5209b`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d56521fb6d8ff8b62bbe49c522513183c0e902bfd13c0475992f4c94f44c44`  
		Last Modified: Tue, 27 Dec 2016 21:10:18 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cb0764db822cf4196f5f7096ae805f1b1898cb8a644872722edc3b66b8c411`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c163f674749c03cc77d7e9893b5c14fa429ccbcd774057c7dbd7f891fc018`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
