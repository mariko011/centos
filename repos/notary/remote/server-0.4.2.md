## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:f876e3c4246ef03054d42aa76089d8d3d3a06e9e42a7d5934d89412e876b8426
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6209070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6370fc2b68ef1e550190f2436c53813d4f0e544fb8a8cc6eb65033469c59c4`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:14 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 27 Dec 2016 20:51:15 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:15 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:16 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:17 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:18 GMT
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
	-	`sha256:0a7fc2e4bf575436159c2429c767a7af01f09da583bc3bd49458bf3b457ae08c`  
		Last Modified: Tue, 27 Dec 2016 21:11:58 GMT  
		Size: 3.9 MB (3893984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384e656250c770cafe7073960fc480489247b256f7f9807700673f209a61368`  
		Last Modified: Tue, 27 Dec 2016 21:11:57 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d18eb8ae00feac96f26f2fd0052485a7b92b03f428f386b7fbe11c87ee18ae`  
		Last Modified: Tue, 27 Dec 2016 21:11:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
