## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:232188a53783f231fe42a0bdfddbfe9b0ad67cfed351fb6207e3737cf8380448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:83175a2a3a0d4ce1606d5aa9e487738610243869e55b7b39b7760d73bcd4bae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6928622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac21f8b524cf53f7a22a30d7eb0185614fdf071f1e616b113a814d375adff3f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Wed, 10 Jan 2018 00:19:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:03 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:03 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:04 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:19:04 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:05 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:19:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:05 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe9480cd7d4f49936e9923d7e21c653a275785cb1768906b2fc754bf84e2c92`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ffa4d8ef262926bdf75afb5a062f01fdc28bc40615180587b9ae69bc3f433f`  
		Last Modified: Wed, 10 Jan 2018 00:43:31 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b2003b5aab79c197437b0ad7fd0d3fdb2785f9155a80ca2f8e0c0541780f6a`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603007ea684b1eb68cac99f8bdcede773b6ec9074e2c0d1f3bbf75d58783e46f`  
		Last Modified: Wed, 10 Jan 2018 00:43:29 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
