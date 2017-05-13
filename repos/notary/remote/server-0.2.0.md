## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e464c1403f4eca67b016c601d218a2203ae5f523af965a147ea57e12e39adf6c
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7749013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d1db1c67df8208a78ec87a646917ed6d5804815923b8312a5058a6037bfea`
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
# Wed, 10 May 2017 22:36:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 10 May 2017 22:36:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:36:07 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:36:08 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:36:09 GMT
USER [notary]
# Wed, 10 May 2017 22:36:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:36:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:36:11 GMT
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
	-	`sha256:2fc1ff7e99444c3be1a9c2634dce4a26c5ed526d786029e081bcfb220f15785b`  
		Last Modified: Sat, 13 May 2017 08:57:36 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ffc1ac9378f0c56f4febb6c11fb1333ccc05bea52a50804abc43470be3d74e`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d67db5ef7f82ba307947531e7b15dc0d02b35c22c9c8cb5e4545d8f7a33893e`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
