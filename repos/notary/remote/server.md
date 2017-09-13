## `notary:server`

```console
$ docker pull notary@sha256:0eed9caeaa7c68e6ded77768966eaa6af8cefb6151c3e0d1b725508b787deb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:a16d55006a57138faca18ea877c02d04a17e2df98cbaf3d5fbdd779483719f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe53b9351bab8710f7c926360ce4ec77549a7b9e9ea9974f5c62a80a30359758`
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
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:22 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
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
	-	`sha256:be0151af34b84fe083cb8e2b0a4c32707f149615a142fb3ab325f52baed08951`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76643bd096dfa6fb3db006090c1bf69b63f6ccc1a4c79f3ee1c94a4e28fd11`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e110b37725a254f3931cac4f7582eab9fe3a1483b33d348fdd8949b48b719281`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
