## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:647911bf97b035ba07956b7bdc1c847c47907a1c80c1b493bd6458eeb5f05256
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca37866022e411fa0123990c7132d83b1dd8471dfff0881e27727ce99a58c890`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:35:37 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 May 2017 22:36:58 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 10 May 2017 22:36:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:37:00 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:37:01 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:02 GMT
USER [notary]
# Wed, 10 May 2017 22:37:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:37:03 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:04 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381a7b4bc912ebae121fa4e1846c03d266be531ad2b8d04ff2e4bfd11ef39d05`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3723dc5ae41d5c5546b655c44e9921749ab3274b98ad4a3b2b7e7fd4a4de77b4`  
		Last Modified: Sat, 13 May 2017 08:58:33 GMT  
		Size: 3.9 MB (3941569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe5ff0079008106ff9e6fae8deba62ef29953d104bad9baf401b66ed0735a1`  
		Last Modified: Sat, 13 May 2017 08:58:31 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed85fcec941908748bdc809abbbc7ebdfb305808a1f9e49a99179c50ca3a825`  
		Last Modified: Sat, 13 May 2017 08:58:31 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
