## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:3341f07b7b4051be9383d3231678483dd91823ca2d7aaa9488100de93db099ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:80ffcf037716c7f3a5b3cf0f5843513e712ea962a9b2d9b049e97743e4e71488
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312ec5fd0bbf4652d110804a4c618b5f24737c048c499bbbbee34b775c7939c4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:19 GMT
ADD file:b1a1c179e13b294eb1d0ce45a9dd21b3ad8cd71d44dbf95ec525e1220460e266 in / 
# Mon, 09 Oct 2017 21:31:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:31:25 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b89ff6f35f4faafb9380eac2c961e765474dbf42f8fdcfd473619ba9150d797d`  
		Last Modified: Mon, 09 Oct 2017 21:37:55 GMT  
		Size: 38.1 MB (38103151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f5dbfe06261c507ddaa7639cab0b572d77a9c540f21e3e1b07d36409004b32`  
		Last Modified: Mon, 09 Oct 2017 21:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:4d231acdbe00a1315108014b210f8627b2ed4d108eedfd0bb5f21df516c570ee
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36942989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73aa42af961db5cb2c791436abf4f52364f85c45fd851b6c8261376c6dca1b4c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:37 GMT
ADD file:a8cf30e2633c0c6596f28caae177b1799dc03f02faffb29c1df6a9b3f4f2660e in / 
# Mon, 09 Oct 2017 21:42:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1282da908a847eaab77730450c3fb27e2389bf3a63c0d58e57cd7d4628bca072`  
		Last Modified: Mon, 09 Oct 2017 21:47:58 GMT  
		Size: 36.9 MB (36942760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5816d9157589f15a1e66471c03be2652a8de321cdc1e01aed158ead22cae5990`  
		Last Modified: Mon, 09 Oct 2017 21:48:09 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:f41cfddbf3ac253d7c3714e207b6d685effced54460fad1b04a63bf7ab55e253
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35656619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6786543f5f15477c6745207b7655a9d100cf77ea40a7cfa0718f9a2d1ebbd1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:57 GMT
ADD file:b938e8ba762f3f29aac3e3643fc215c137df643d9ca90fe5c643686055d6ebfc in / 
# Mon, 09 Oct 2017 21:42:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:63120fd02176bb4caa28dc472aa7016cf2a447a6ddbd7becd840ab2d749b7388`  
		Last Modified: Mon, 09 Oct 2017 21:49:31 GMT  
		Size: 35.7 MB (35656393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d3e3203de2b78633b2b66388eb444a96fea2e6f7f1062526789d0dda6bc6e3`  
		Last Modified: Mon, 09 Oct 2017 21:49:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:372accc363be0d9d8889b2a7d51f5e518571771b94ba614d0d2ea1b937ec6dd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37433464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b4958a297f39985c3af2e7ab326e3901dfd56aeae29516cd75405a983010ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:43 GMT
ADD file:dd39f56262f1a386c227171b767ace26306ec3cc8e48a0923dc29e85a085be27 in / 
# Mon, 09 Oct 2017 21:42:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:49 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3ad3a35305943c539608316fab0e98904ecf8f76c58f520ca2d64b3c27cb17de`  
		Last Modified: Mon, 09 Oct 2017 21:49:13 GMT  
		Size: 37.4 MB (37433240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172997164e221bfe6ef64f17e3e0ed72ab21e0e4c1c8617a1a0cf1b4640e802a`  
		Last Modified: Mon, 09 Oct 2017 21:49:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
