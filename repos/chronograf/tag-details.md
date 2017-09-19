<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.8`](#chronograf138)
-	[`chronograf:1.3.8.1`](#chronograf1381)
-	[`chronograf:1.3.8.1-alpine`](#chronograf1381-alpine)
-	[`chronograf:1.3.8-alpine`](#chronograf138-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:f6e2b002fdd3df673ee4961965948ee0e32fb956bfd258243e36dd95198e6259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:41861d578785c5d52054aa983da30a4f8309814080c17361f3e4ee70c7f0210b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a12db59c981522451d3e6bef134afc8c0de15d5c743b20f8fe27de23aff6b06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:15:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 13 Sep 2017 12:15:19 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Wed, 13 Sep 2017 12:15:49 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 12:15:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 13 Sep 2017 12:15:50 GMT
EXPOSE 8888/tcp
# Wed, 13 Sep 2017 12:15:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 13 Sep 2017 12:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 12:15:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decc1d0617f966768399fae165cf4064bb65eb790a4d507c6e99212bfb6a17d`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078bcf9b00895bd6dd600346c20c139d4b955c22bbbee06d3b2a21f8f0387a3`  
		Last Modified: Wed, 13 Sep 2017 12:16:15 GMT  
		Size: 11.1 MB (11054116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f3764e784ce0e5bae3bfcf141ecdc634f731dd328e7deaf994314887bcb5f6`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4896acb0a7b024457d0a2aadcfcb3979d08112d88f793869d432b678749fad0`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d28ed2b486e0dccd01bbbcbaba6cb1c75062848a0cd511544e0f49dc20f01d`  
		Last Modified: Wed, 13 Sep 2017 12:16:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8`

```console
$ docker pull chronograf@sha256:f6e2b002fdd3df673ee4961965948ee0e32fb956bfd258243e36dd95198e6259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8` - linux; amd64

```console
$ docker pull chronograf@sha256:41861d578785c5d52054aa983da30a4f8309814080c17361f3e4ee70c7f0210b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a12db59c981522451d3e6bef134afc8c0de15d5c743b20f8fe27de23aff6b06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:15:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 13 Sep 2017 12:15:19 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Wed, 13 Sep 2017 12:15:49 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 12:15:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 13 Sep 2017 12:15:50 GMT
EXPOSE 8888/tcp
# Wed, 13 Sep 2017 12:15:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 13 Sep 2017 12:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 12:15:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decc1d0617f966768399fae165cf4064bb65eb790a4d507c6e99212bfb6a17d`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078bcf9b00895bd6dd600346c20c139d4b955c22bbbee06d3b2a21f8f0387a3`  
		Last Modified: Wed, 13 Sep 2017 12:16:15 GMT  
		Size: 11.1 MB (11054116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f3764e784ce0e5bae3bfcf141ecdc634f731dd328e7deaf994314887bcb5f6`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4896acb0a7b024457d0a2aadcfcb3979d08112d88f793869d432b678749fad0`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d28ed2b486e0dccd01bbbcbaba6cb1c75062848a0cd511544e0f49dc20f01d`  
		Last Modified: Wed, 13 Sep 2017 12:16:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.1`

```console
$ docker pull chronograf@sha256:f6e2b002fdd3df673ee4961965948ee0e32fb956bfd258243e36dd95198e6259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.1` - linux; amd64

```console
$ docker pull chronograf@sha256:41861d578785c5d52054aa983da30a4f8309814080c17361f3e4ee70c7f0210b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a12db59c981522451d3e6bef134afc8c0de15d5c743b20f8fe27de23aff6b06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:15:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 13 Sep 2017 12:15:19 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Wed, 13 Sep 2017 12:15:49 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 12:15:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 13 Sep 2017 12:15:50 GMT
EXPOSE 8888/tcp
# Wed, 13 Sep 2017 12:15:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 13 Sep 2017 12:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 12:15:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decc1d0617f966768399fae165cf4064bb65eb790a4d507c6e99212bfb6a17d`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078bcf9b00895bd6dd600346c20c139d4b955c22bbbee06d3b2a21f8f0387a3`  
		Last Modified: Wed, 13 Sep 2017 12:16:15 GMT  
		Size: 11.1 MB (11054116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f3764e784ce0e5bae3bfcf141ecdc634f731dd328e7deaf994314887bcb5f6`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4896acb0a7b024457d0a2aadcfcb3979d08112d88f793869d432b678749fad0`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d28ed2b486e0dccd01bbbcbaba6cb1c75062848a0cd511544e0f49dc20f01d`  
		Last Modified: Wed, 13 Sep 2017 12:16:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.1-alpine`

```console
$ docker pull chronograf@sha256:771b96d15eb83e12c59ee76fc0864e2166004fbe987456adf99c727580bf4983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f093a0c352cc24cfb3a4e02eaf36dfc4a22f25413f0361e622949b717ca7f429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e8d95932f96aaa5a5157cf8ec98459aec6b1de910f5a1e28caa533fba229ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 19 Sep 2017 12:16:15 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 19 Sep 2017 12:16:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 19 Sep 2017 12:16:30 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Sep 2017 12:16:31 GMT
EXPOSE 8888/tcp
# Tue, 19 Sep 2017 12:16:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 19 Sep 2017 12:16:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 12:16:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce375befca87e50f2a8668393d4f5c171ed10b9bb26e93df62358602d90ddb5`  
		Last Modified: Tue, 19 Sep 2017 12:16:43 GMT  
		Size: 5.9 MB (5862734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90725d769fdee50ea32d89d984a5182ce4f6ddec87d9ad358bb9d25d357390ae`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b020f856411648423697cc412548b1c8ee55ab0bbc715131f1885085c82504b`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff95c7ca99b468323fd0bb0bf634f8ac389c25e1f5b3eeeebd5da564ab82bdf`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8-alpine`

```console
$ docker pull chronograf@sha256:771b96d15eb83e12c59ee76fc0864e2166004fbe987456adf99c727580bf4983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f093a0c352cc24cfb3a4e02eaf36dfc4a22f25413f0361e622949b717ca7f429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e8d95932f96aaa5a5157cf8ec98459aec6b1de910f5a1e28caa533fba229ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 19 Sep 2017 12:16:15 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 19 Sep 2017 12:16:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 19 Sep 2017 12:16:30 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Sep 2017 12:16:31 GMT
EXPOSE 8888/tcp
# Tue, 19 Sep 2017 12:16:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 19 Sep 2017 12:16:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 12:16:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce375befca87e50f2a8668393d4f5c171ed10b9bb26e93df62358602d90ddb5`  
		Last Modified: Tue, 19 Sep 2017 12:16:43 GMT  
		Size: 5.9 MB (5862734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90725d769fdee50ea32d89d984a5182ce4f6ddec87d9ad358bb9d25d357390ae`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b020f856411648423697cc412548b1c8ee55ab0bbc715131f1885085c82504b`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff95c7ca99b468323fd0bb0bf634f8ac389c25e1f5b3eeeebd5da564ab82bdf`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:771b96d15eb83e12c59ee76fc0864e2166004fbe987456adf99c727580bf4983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f093a0c352cc24cfb3a4e02eaf36dfc4a22f25413f0361e622949b717ca7f429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e8d95932f96aaa5a5157cf8ec98459aec6b1de910f5a1e28caa533fba229ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 19 Sep 2017 12:16:15 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 19 Sep 2017 12:16:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 19 Sep 2017 12:16:30 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Sep 2017 12:16:31 GMT
EXPOSE 8888/tcp
# Tue, 19 Sep 2017 12:16:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 19 Sep 2017 12:16:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 12:16:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce375befca87e50f2a8668393d4f5c171ed10b9bb26e93df62358602d90ddb5`  
		Last Modified: Tue, 19 Sep 2017 12:16:43 GMT  
		Size: 5.9 MB (5862734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90725d769fdee50ea32d89d984a5182ce4f6ddec87d9ad358bb9d25d357390ae`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b020f856411648423697cc412548b1c8ee55ab0bbc715131f1885085c82504b`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff95c7ca99b468323fd0bb0bf634f8ac389c25e1f5b3eeeebd5da564ab82bdf`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:771b96d15eb83e12c59ee76fc0864e2166004fbe987456adf99c727580bf4983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f093a0c352cc24cfb3a4e02eaf36dfc4a22f25413f0361e622949b717ca7f429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e8d95932f96aaa5a5157cf8ec98459aec6b1de910f5a1e28caa533fba229ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 19 Sep 2017 12:16:15 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 19 Sep 2017 12:16:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 19 Sep 2017 12:16:30 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Sep 2017 12:16:31 GMT
EXPOSE 8888/tcp
# Tue, 19 Sep 2017 12:16:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Sep 2017 12:16:31 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 19 Sep 2017 12:16:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 12:16:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce375befca87e50f2a8668393d4f5c171ed10b9bb26e93df62358602d90ddb5`  
		Last Modified: Tue, 19 Sep 2017 12:16:43 GMT  
		Size: 5.9 MB (5862734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90725d769fdee50ea32d89d984a5182ce4f6ddec87d9ad358bb9d25d357390ae`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b020f856411648423697cc412548b1c8ee55ab0bbc715131f1885085c82504b`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff95c7ca99b468323fd0bb0bf634f8ac389c25e1f5b3eeeebd5da564ab82bdf`  
		Last Modified: Tue, 19 Sep 2017 12:16:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f6e2b002fdd3df673ee4961965948ee0e32fb956bfd258243e36dd95198e6259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:41861d578785c5d52054aa983da30a4f8309814080c17361f3e4ee70c7f0210b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a12db59c981522451d3e6bef134afc8c0de15d5c743b20f8fe27de23aff6b06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:15:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 13 Sep 2017 12:15:19 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Wed, 13 Sep 2017 12:15:49 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 12:15:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 13 Sep 2017 12:15:50 GMT
EXPOSE 8888/tcp
# Wed, 13 Sep 2017 12:15:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 13 Sep 2017 12:15:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 13 Sep 2017 12:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 12:15:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decc1d0617f966768399fae165cf4064bb65eb790a4d507c6e99212bfb6a17d`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078bcf9b00895bd6dd600346c20c139d4b955c22bbbee06d3b2a21f8f0387a3`  
		Last Modified: Wed, 13 Sep 2017 12:16:15 GMT  
		Size: 11.1 MB (11054116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f3764e784ce0e5bae3bfcf141ecdc634f731dd328e7deaf994314887bcb5f6`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4896acb0a7b024457d0a2aadcfcb3979d08112d88f793869d432b678749fad0`  
		Last Modified: Wed, 13 Sep 2017 12:16:12 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d28ed2b486e0dccd01bbbcbaba6cb1c75062848a0cd511544e0f49dc20f01d`  
		Last Modified: Wed, 13 Sep 2017 12:16:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
