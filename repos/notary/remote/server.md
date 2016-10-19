## `notary:server`

```console
$ docker pull notary@sha256:e5349a75d8e1c6f77d97842a92eb93ab93004f42de1abd00b5024a4da9cceeb0
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7aaa0013b1810cfc3c0d3f648054e243939645176876e637b0bc6bfb4b714ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Tue, 18 Oct 2016 23:44:31 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:32 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:33 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:33 GMT
WORKDIR /notary/server
# Tue, 18 Oct 2016 23:44:34 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:44:34 GMT
USER [notary]
# Tue, 18 Oct 2016 23:44:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 18 Oct 2016 23:44:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:44:36 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95173114388136572f99b6fd11347ad609d38fc40d322d1666d4c86c42622d3d`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e9a2121900527e95f5c2f0c538083b10119bcb12969bdae7dc743b7259f453`  
		Last Modified: Tue, 18 Oct 2016 23:44:46 GMT  
		Size: 4.8 MB (4805118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d65e822fdfc7e7b1641135781c80f48758c540aa6a97fdf8f199a6a35f9d5a`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b474395b33b6cf6831f2a9429c62298969614033605b936a9b23d4b18c24a9a7`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
