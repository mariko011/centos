## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:f6bd981cf0a321dedb560a00e864d3528ee037b270c3721e8e299b2659dec7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:d3da4c443cc7a6dd654e616b0a3c6ef342d1295e352b0c6a3afe04544cecef68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6854525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9020ff80241c88666445ae93871a87970c951270ba0c5f6b7908d186001aae`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:40 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:40 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:41 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:41 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:41 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:42 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da8179f844951d2b701d9c2723fd9a2c3914793973e4e38dfd64664c29ccfb2`  
		Last Modified: Sat, 04 Nov 2017 13:10:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9518f40b01adf5fc3236e5eb2a3dc791f4918fb7ea04c7c6459c599408b0fe`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47c9e41f6afcd0cc020fde85e027766d261b5077999b3338f5a08da000433e8`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426158f5497d9868384c05a39d266b0a4711dc2e5d5df79da58dc53e263b4531`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
