<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.1`](#registry261)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:a3551c422521617e86927c3ff57e05edf086f1648f4d8524633216ca363d06c2
```

-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0c4eabab4d63150d9c17bc7d31ea392680b15a1485c3206fdaa88d30f0f891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:15 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 May 2017 23:00:16 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Wed, 10 May 2017 23:00:17 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 May 2017 23:00:18 GMT
VOLUME [/var/lib/registry]
# Wed, 10 May 2017 23:00:18 GMT
EXPOSE 5000/tcp
# Wed, 10 May 2017 23:00:19 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 May 2017 23:00:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:00:21 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce42745103d5e3b8d4801aad10c536f1edc90444c56b20c1a64b83af052221`  
		Last Modified: Sat, 13 May 2017 18:29:29 GMT  
		Size: 2.0 MB (2013450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edd1a7fa4de73f6a95b62fdf163388982a9a2cd7494723f62c982082f0531b`  
		Last Modified: Sat, 13 May 2017 18:29:30 GMT  
		Size: 6.3 MB (6263334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432773976ace162ee25c6d3eb788511539efbb30318c8611f65207734f5a819d`  
		Last Modified: Sat, 13 May 2017 18:29:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234a47fe5a991df5c7f09e3f34701f340ca1626759b191c2a17cbe832b65979`  
		Last Modified: Sat, 13 May 2017 18:29:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:a3551c422521617e86927c3ff57e05edf086f1648f4d8524633216ca363d06c2
```

-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0c4eabab4d63150d9c17bc7d31ea392680b15a1485c3206fdaa88d30f0f891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:15 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 May 2017 23:00:16 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Wed, 10 May 2017 23:00:17 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 May 2017 23:00:18 GMT
VOLUME [/var/lib/registry]
# Wed, 10 May 2017 23:00:18 GMT
EXPOSE 5000/tcp
# Wed, 10 May 2017 23:00:19 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 May 2017 23:00:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:00:21 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce42745103d5e3b8d4801aad10c536f1edc90444c56b20c1a64b83af052221`  
		Last Modified: Sat, 13 May 2017 18:29:29 GMT  
		Size: 2.0 MB (2013450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edd1a7fa4de73f6a95b62fdf163388982a9a2cd7494723f62c982082f0531b`  
		Last Modified: Sat, 13 May 2017 18:29:30 GMT  
		Size: 6.3 MB (6263334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432773976ace162ee25c6d3eb788511539efbb30318c8611f65207734f5a819d`  
		Last Modified: Sat, 13 May 2017 18:29:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234a47fe5a991df5c7f09e3f34701f340ca1626759b191c2a17cbe832b65979`  
		Last Modified: Sat, 13 May 2017 18:29:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.1`

```console
$ docker pull registry@sha256:a3551c422521617e86927c3ff57e05edf086f1648f4d8524633216ca363d06c2
```

-	Platforms:
	-	linux; amd64

### `registry:2.6.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0c4eabab4d63150d9c17bc7d31ea392680b15a1485c3206fdaa88d30f0f891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:00:15 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 May 2017 23:00:16 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Wed, 10 May 2017 23:00:17 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 May 2017 23:00:18 GMT
VOLUME [/var/lib/registry]
# Wed, 10 May 2017 23:00:18 GMT
EXPOSE 5000/tcp
# Wed, 10 May 2017 23:00:19 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 May 2017 23:00:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:00:21 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce42745103d5e3b8d4801aad10c536f1edc90444c56b20c1a64b83af052221`  
		Last Modified: Sat, 13 May 2017 18:29:29 GMT  
		Size: 2.0 MB (2013450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edd1a7fa4de73f6a95b62fdf163388982a9a2cd7494723f62c982082f0531b`  
		Last Modified: Sat, 13 May 2017 18:29:30 GMT  
		Size: 6.3 MB (6263334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432773976ace162ee25c6d3eb788511539efbb30318c8611f65207734f5a819d`  
		Last Modified: Sat, 13 May 2017 18:29:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234a47fe5a991df5c7f09e3f34701f340ca1626759b191c2a17cbe832b65979`  
		Last Modified: Sat, 13 May 2017 18:29:28 GMT  
		Size: 213.0 B  
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
