<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.0`](#chronograf130)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.0-alpine`](#chronograf130-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

**does not exist** (yet?)

## `chronograf:1.3.0`

**does not exist** (yet?)

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:ca6548b5edf663ad209363529db36fe96d4e7998b68d85319c9d72b49a41b4e2
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75861692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81c52da8fbbea7efdf157262e6da5434630b30eac256bf7a33ac5fd0b5398b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 22:25:07 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Mon, 24 Apr 2017 22:25:28 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 22:25:29 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Mon, 24 Apr 2017 22:25:30 GMT
EXPOSE 10000/tcp
# Mon, 24 Apr 2017 22:25:30 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:25:31 GMT
VOLUME [/var/lib/chronograf]
# Mon, 24 Apr 2017 22:25:32 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 24 Apr 2017 22:25:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 22:25:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84be972d12aebfae81297c8a60c0f8ea96fea29bd8d40064c7f2ff270d9c692f`  
		Last Modified: Tue, 25 Apr 2017 16:56:37 GMT  
		Size: 4.0 MB (4038015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a76b77037dfef13822f678eca9f8154b776e39447b1a48f47bf42faf912e67`  
		Last Modified: Tue, 25 Apr 2017 16:56:36 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecc443513d7f5ff260f5535c7f054429e3f59b47cffd2db0200f1673c6ec932`  
		Last Modified: Tue, 25 Apr 2017 16:56:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

**does not exist** (yet?)

## `chronograf:1.3.0-alpine`

**does not exist** (yet?)

## `chronograf:alpine`

**does not exist** (yet?)
