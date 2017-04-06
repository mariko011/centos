<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.1`](#registry261)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:412e3b6494f623a9f03f7f9f8b8118844deaecfea19e3a5f1ce54eed4f400296
```

-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10491435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136c8b16df203ef26b2f39e24bd3f403b63be67610ec99a5b5af0cceac5c1b51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:54 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 06 Apr 2017 16:15:52 GMT
VOLUME [/var/lib/registry]
# Thu, 06 Apr 2017 16:15:53 GMT
EXPOSE 5000/tcp
# Thu, 06 Apr 2017 16:15:53 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 06 Apr 2017 16:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Apr 2017 16:15:54 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6e278d8f96410ac642cd0ec87254db46ed449b140b0a37dbbcceb9f6518c67`  
		Last Modified: Sat, 04 Mar 2017 05:49:43 GMT  
		Size: 2.0 MB (1974427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b08c1b8f781cd64ce1a3e49adeaa718c1eadbef2e32f13c932243f3056ac8`  
		Last Modified: Thu, 06 Apr 2017 16:16:18 GMT  
		Size: 6.2 MB (6203040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80119f43a01e091d0cb2fed1235caab290923baf93777aeb2b1588fc9ee3960d`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf34ba23c50b85409946f80e09a684097052f830ae7e88f2aacdff972562da1`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:412e3b6494f623a9f03f7f9f8b8118844deaecfea19e3a5f1ce54eed4f400296
```

-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10491435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136c8b16df203ef26b2f39e24bd3f403b63be67610ec99a5b5af0cceac5c1b51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:54 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 06 Apr 2017 16:15:52 GMT
VOLUME [/var/lib/registry]
# Thu, 06 Apr 2017 16:15:53 GMT
EXPOSE 5000/tcp
# Thu, 06 Apr 2017 16:15:53 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 06 Apr 2017 16:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Apr 2017 16:15:54 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6e278d8f96410ac642cd0ec87254db46ed449b140b0a37dbbcceb9f6518c67`  
		Last Modified: Sat, 04 Mar 2017 05:49:43 GMT  
		Size: 2.0 MB (1974427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b08c1b8f781cd64ce1a3e49adeaa718c1eadbef2e32f13c932243f3056ac8`  
		Last Modified: Thu, 06 Apr 2017 16:16:18 GMT  
		Size: 6.2 MB (6203040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80119f43a01e091d0cb2fed1235caab290923baf93777aeb2b1588fc9ee3960d`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf34ba23c50b85409946f80e09a684097052f830ae7e88f2aacdff972562da1`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.1`

```console
$ docker pull registry@sha256:412e3b6494f623a9f03f7f9f8b8118844deaecfea19e3a5f1ce54eed4f400296
```

-	Platforms:
	-	linux; amd64

### `registry:2.6.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10491435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136c8b16df203ef26b2f39e24bd3f403b63be67610ec99a5b5af0cceac5c1b51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:54 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 06 Apr 2017 16:15:52 GMT
VOLUME [/var/lib/registry]
# Thu, 06 Apr 2017 16:15:53 GMT
EXPOSE 5000/tcp
# Thu, 06 Apr 2017 16:15:53 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 06 Apr 2017 16:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Apr 2017 16:15:54 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6e278d8f96410ac642cd0ec87254db46ed449b140b0a37dbbcceb9f6518c67`  
		Last Modified: Sat, 04 Mar 2017 05:49:43 GMT  
		Size: 2.0 MB (1974427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b08c1b8f781cd64ce1a3e49adeaa718c1eadbef2e32f13c932243f3056ac8`  
		Last Modified: Thu, 06 Apr 2017 16:16:18 GMT  
		Size: 6.2 MB (6203040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80119f43a01e091d0cb2fed1235caab290923baf93777aeb2b1588fc9ee3960d`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf34ba23c50b85409946f80e09a684097052f830ae7e88f2aacdff972562da1`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:412e3b6494f623a9f03f7f9f8b8118844deaecfea19e3a5f1ce54eed4f400296
```

-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10491435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136c8b16df203ef26b2f39e24bd3f403b63be67610ec99a5b5af0cceac5c1b51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:33:54 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Thu, 06 Apr 2017 16:15:52 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 06 Apr 2017 16:15:52 GMT
VOLUME [/var/lib/registry]
# Thu, 06 Apr 2017 16:15:53 GMT
EXPOSE 5000/tcp
# Thu, 06 Apr 2017 16:15:53 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 06 Apr 2017 16:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Apr 2017 16:15:54 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6e278d8f96410ac642cd0ec87254db46ed449b140b0a37dbbcceb9f6518c67`  
		Last Modified: Sat, 04 Mar 2017 05:49:43 GMT  
		Size: 2.0 MB (1974427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b08c1b8f781cd64ce1a3e49adeaa718c1eadbef2e32f13c932243f3056ac8`  
		Last Modified: Thu, 06 Apr 2017 16:16:18 GMT  
		Size: 6.2 MB (6203040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80119f43a01e091d0cb2fed1235caab290923baf93777aeb2b1588fc9ee3960d`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf34ba23c50b85409946f80e09a684097052f830ae7e88f2aacdff972562da1`  
		Last Modified: Thu, 06 Apr 2017 16:16:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
