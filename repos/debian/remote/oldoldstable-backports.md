## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:51e7bb353433b37337a3e3522efa4752910be9c5c528bd1aa46e16cea6a03e31
```

-	Platforms:
	-	linux; amd64

### `debian:oldoldstable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc6b0b59ab28a612bda6269d8f6037c0a4806f00e99f0a535d3b66157e50fc8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:15 GMT
ADD file:d82d51e6ed1fcccb8e4e24f86818fd10bcdb881589d21cbc83522a2e4c0705fd in / 
# Thu, 07 Sep 2017 23:05:15 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:05:21 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e0e94ab42ddb6b5abfa24f9a81a5c66bacc0902f75e2976d78f688023272b31a`  
		Last Modified: Thu, 07 Sep 2017 23:12:18 GMT  
		Size: 38.1 MB (38103132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1dba5578594ac346ea94516c739ff037fdcb40274a3e8e3c2858db4604065fd`  
		Last Modified: Thu, 07 Sep 2017 23:12:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
