## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:34375c133ddd63616e1c3a0fe45409b4af6eedb07397b925be5002dbcf292692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:cc6877903dbf6497ddb7f9437fb9dc4a38f52841a63da0a620d6def05628af54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae0aa1b41b80a0c879345b30f749053f05003daeecad6c3e06c2d36d792f37`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Tue, 09 Jan 2018 23:55:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:16:47 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:16:47 GMT
USER [notary]
# Wed, 10 Jan 2018 00:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:16:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:16:48 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa90164141fcab4b605235960d081a835c35f975fd4cca5218fff67113263bdc`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613b77a5c0dfc2097cd8f615300a0a8133aedd8e2c30f4af53c6029e65c24826`  
		Last Modified: Wed, 10 Jan 2018 00:42:20 GMT  
		Size: 3.9 MB (3941573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572c61dc365fc10e644a2fba475ac3b7294d74d9be022468e557886136ca6cd1`  
		Last Modified: Wed, 10 Jan 2018 00:42:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba27bc8cc7f0adc760bd2602fe5cb438909675b85de3c4c6b9b8d41bbca5887e`  
		Last Modified: Wed, 10 Jan 2018 00:42:42 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
