## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:a5351e77421b713fe55e15fe779c2d650d8a7c94ce8ce062d7718f0904df4e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:7c7cf9d0e8b7fc3fc3e93f4889f20788ed11f4a2551ebec73be1dcb9485e92fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e012d975b9870b6bda609172420d4270ed10df2769d4ceeb6caee1f61d70af`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:33 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:33 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:33 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:34 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73db92a9688c04ed57185156ce962334730e796de1c1a422036469c93e4be987`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a65ff01712849d4550da314aacbe576eabd012adb4756e66a07b0642c33cfb`  
		Last Modified: Wed, 13 Sep 2017 00:08:24 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305107252ee53251a3c6e0003ebdfc4477aa9e468491dbd67ddf1e178afb5ea`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a6871826d9799e775a6dbcbd393502412bfefc5f50ef667a000028e66a9f17`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
