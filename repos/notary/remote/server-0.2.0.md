## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e98f29ee444909026ebf4b7bb421550b4596aa96c519db607dc1b841aadacdb8
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf902e7f65e8931b2a4a952339c56a962b175c8384be39de9a4d63b8c1f473c6`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Tue, 18 Oct 2016 23:44:31 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:04 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:05 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:05 GMT
WORKDIR /notary/server
# Tue, 18 Oct 2016 23:45:06 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:45:06 GMT
USER [notary]
# Tue, 18 Oct 2016 23:45:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 18 Oct 2016 23:45:07 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:45:07 GMT
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
	-	`sha256:f11cdfe988fb8c17f4fec60d3fcd2cd288d0656111a6051de4e1263cafb9cbd0`  
		Last Modified: Tue, 18 Oct 2016 23:45:18 GMT  
		Size: 5.7 MB (5698317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85429e10e3c93dd787e7fa0d1b2446ddcbc3317983bcbf9525303cf42a5d3b4e`  
		Last Modified: Tue, 18 Oct 2016 23:45:16 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916839a02e84e023d4a5fceb669721747bbb3b422117e064d91606aa65ad1baa`  
		Last Modified: Tue, 18 Oct 2016 23:45:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
