## `notary:server`

```console
$ docker pull notary@sha256:1d569ebf5f9506c7f0b2e5f26e544fa16d8a5dfd5899dd814ca83e4a8d4d1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:a8b3782e8c907f7cd9ed05aff470e320e6e648eb2d28e0a36af3dfa65fee93cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6098223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e411b791092d0893dbb6bfd6eb02a7cd2f04ff4473d14f75431aa7acc8b42b66`
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
# Tue, 09 Jan 2018 23:55:55 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
WORKDIR /notary/server
# Tue, 09 Jan 2018 23:55:58 GMT
RUN adduser -D -H -g "" notary
# Tue, 09 Jan 2018 23:55:58 GMT
USER [notary]
# Tue, 09 Jan 2018 23:55:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 09 Jan 2018 23:55:59 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 09 Jan 2018 23:55:59 GMT
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
	-	`sha256:75a7c458478ca4d6757fdd25a6bf326250b1976f8a54bd5bff1ee1dd4f168b20`  
		Last Modified: Wed, 10 Jan 2018 00:20:35 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33182cbdc439f6011e4eb176af5253509388fb96e0090d5d0f43c069585fb670`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83a07a9f8560cf73a2971ff43e9cd91c43b77a36c2cf48bb76b25b95e847a6`  
		Last Modified: Wed, 10 Jan 2018 00:20:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
