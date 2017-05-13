## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:f34bf151d47cf9865754511ba52cb19aec10844ec5232b3dc196df13bb1fbfd5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6830994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554db1ff40c5acd5c6d76cde28ffcd984245caaefdd2b6e79084335f177f0e99`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:36:04 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 May 2017 22:36:31 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 10 May 2017 22:36:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:36:33 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:36:35 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:36:36 GMT
USER [notary]
# Wed, 10 May 2017 22:36:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:36:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:36:38 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c479d9cd2db1733a669234363b4643a5acc54e078553c26618192cf3ca8ddc`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9940c7de94a6843c380c7148be34ee1ccd9cc9db68e17c2494c1f66181b35e92`  
		Last Modified: Sat, 13 May 2017 08:58:04 GMT  
		Size: 4.9 MB (4861102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ca58f71bdc5b887b08d9584f3ad8bc6c644a779983145b52fae95d558e35ee`  
		Last Modified: Sat, 13 May 2017 08:58:04 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7224ff52e094b65b675ac111a41c7833738e1afb76df686730db25604836dd96`  
		Last Modified: Sat, 13 May 2017 08:58:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
