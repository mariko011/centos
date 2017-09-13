## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:378b29d51da2e7fa3d6b7ce8d16bcf1a4cf09d7f8530740e44cb5243b2d70634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:eafcf4913d9e1f12f9612955ba5843f4389deec6861262e63ef80c6e49acd559
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870b636e08dde17ea8806e8c362b05381be1c5dba6f468c27e265d0adac3c22`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:20 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:28 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:28 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d612c68c1b368aa968afa8d420b9cd0cf795fc2ce9dd3704264829583b73d52d`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2979a96c93df16038a60a24acf77c96627009ffa52c38c9cc9bd64e6bf02663`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 3.9 MB (3941572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da60d386400d7772ac350d7b3e08973529c88067f06765b75377b2b995663ae`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383273e6a85cb3b8252d668a46f686f78fe453cf0cab68a8718357a0fbb66535`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
