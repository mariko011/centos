<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.6`](#chronograf136)
-	[`chronograf:1.3.6.1`](#chronograf1361)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.6-alpine`](#chronograf136-alpine)
-	[`chronograf:1.3.6.1-alpine`](#chronograf1361-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:fa0a331aceede19be3a79488b5364a291a4ecaa7c941490523a5c1e175422fd1
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091fd38a529efffc2f7b260bd315cc9793868f2d0e350915b74ad574ae4f242e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Aug 2017 19:00:01 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:34 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:35 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:35 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005011cc2f1d5d91efc6abd518b50f2fb4b87fb329c848bfa6ed9a5ee90be37e`  
		Last Modified: Tue, 15 Aug 2017 19:01:00 GMT  
		Size: 11.0 MB (10961928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe860895290abf9d5a18e1fb883ed9d7626f9bf0f454f4f713b93cfde6fe84`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd500d51deb30f89423d070ad0c3b2f761bc5e12c79eaed64dfc7d32444549`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cd83ab882bf47b6f262cca15393976321004f6a9ab79052bf0b0a6f75a24d9`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6`

```console
$ docker pull chronograf@sha256:fa0a331aceede19be3a79488b5364a291a4ecaa7c941490523a5c1e175422fd1
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091fd38a529efffc2f7b260bd315cc9793868f2d0e350915b74ad574ae4f242e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Aug 2017 19:00:01 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:34 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:35 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:35 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005011cc2f1d5d91efc6abd518b50f2fb4b87fb329c848bfa6ed9a5ee90be37e`  
		Last Modified: Tue, 15 Aug 2017 19:01:00 GMT  
		Size: 11.0 MB (10961928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe860895290abf9d5a18e1fb883ed9d7626f9bf0f454f4f713b93cfde6fe84`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd500d51deb30f89423d070ad0c3b2f761bc5e12c79eaed64dfc7d32444549`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cd83ab882bf47b6f262cca15393976321004f6a9ab79052bf0b0a6f75a24d9`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6.1`

```console
$ docker pull chronograf@sha256:fa0a331aceede19be3a79488b5364a291a4ecaa7c941490523a5c1e175422fd1
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091fd38a529efffc2f7b260bd315cc9793868f2d0e350915b74ad574ae4f242e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Aug 2017 19:00:01 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:34 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:35 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:35 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005011cc2f1d5d91efc6abd518b50f2fb4b87fb329c848bfa6ed9a5ee90be37e`  
		Last Modified: Tue, 15 Aug 2017 19:01:00 GMT  
		Size: 11.0 MB (10961928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe860895290abf9d5a18e1fb883ed9d7626f9bf0f454f4f713b93cfde6fe84`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd500d51deb30f89423d070ad0c3b2f761bc5e12c79eaed64dfc7d32444549`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cd83ab882bf47b6f262cca15393976321004f6a9ab79052bf0b0a6f75a24d9`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:fa0a331aceede19be3a79488b5364a291a4ecaa7c941490523a5c1e175422fd1
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091fd38a529efffc2f7b260bd315cc9793868f2d0e350915b74ad574ae4f242e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Aug 2017 19:00:01 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:34 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:35 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:35 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005011cc2f1d5d91efc6abd518b50f2fb4b87fb329c848bfa6ed9a5ee90be37e`  
		Last Modified: Tue, 15 Aug 2017 19:01:00 GMT  
		Size: 11.0 MB (10961928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe860895290abf9d5a18e1fb883ed9d7626f9bf0f454f4f713b93cfde6fe84`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd500d51deb30f89423d070ad0c3b2f761bc5e12c79eaed64dfc7d32444549`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cd83ab882bf47b6f262cca15393976321004f6a9ab79052bf0b0a6f75a24d9`  
		Last Modified: Tue, 15 Aug 2017 19:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:dcf50c4e7ba7b5a9fc4b9dbb9ad2a9168ee7a4d3a11257d4ce6de10e6b6d3361
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabc72585f2561c8f941d42f58d116c71f0e4179ae4bacd6e54a1aa4a7967950`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 15 Aug 2017 19:00:40 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:49 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:49 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad389acb6e4e5e6e1dffb113e18ba8b7c0f7623f2ae59c092ba7f2e077996a7`  
		Last Modified: Tue, 15 Aug 2017 19:01:29 GMT  
		Size: 5.8 MB (5775333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd37c850df3832be34111c7df81c6914f0a017a06e91228ac916fa192b995ce`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930757704f4da2e87feb6216e46f8a962ac0ce79d0deb601629bc3b4b872d716`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cec8d6760d63b31001d207d17aedfb7676208607c471ca149556bbbc3c5475`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6-alpine`

```console
$ docker pull chronograf@sha256:dcf50c4e7ba7b5a9fc4b9dbb9ad2a9168ee7a4d3a11257d4ce6de10e6b6d3361
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabc72585f2561c8f941d42f58d116c71f0e4179ae4bacd6e54a1aa4a7967950`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 15 Aug 2017 19:00:40 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:49 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:49 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad389acb6e4e5e6e1dffb113e18ba8b7c0f7623f2ae59c092ba7f2e077996a7`  
		Last Modified: Tue, 15 Aug 2017 19:01:29 GMT  
		Size: 5.8 MB (5775333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd37c850df3832be34111c7df81c6914f0a017a06e91228ac916fa192b995ce`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930757704f4da2e87feb6216e46f8a962ac0ce79d0deb601629bc3b4b872d716`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cec8d6760d63b31001d207d17aedfb7676208607c471ca149556bbbc3c5475`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6.1-alpine`

```console
$ docker pull chronograf@sha256:dcf50c4e7ba7b5a9fc4b9dbb9ad2a9168ee7a4d3a11257d4ce6de10e6b6d3361
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabc72585f2561c8f941d42f58d116c71f0e4179ae4bacd6e54a1aa4a7967950`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 15 Aug 2017 19:00:40 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:49 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:49 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad389acb6e4e5e6e1dffb113e18ba8b7c0f7623f2ae59c092ba7f2e077996a7`  
		Last Modified: Tue, 15 Aug 2017 19:01:29 GMT  
		Size: 5.8 MB (5775333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd37c850df3832be34111c7df81c6914f0a017a06e91228ac916fa192b995ce`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930757704f4da2e87feb6216e46f8a962ac0ce79d0deb601629bc3b4b872d716`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cec8d6760d63b31001d207d17aedfb7676208607c471ca149556bbbc3c5475`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:dcf50c4e7ba7b5a9fc4b9dbb9ad2a9168ee7a4d3a11257d4ce6de10e6b6d3361
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabc72585f2561c8f941d42f58d116c71f0e4179ae4bacd6e54a1aa4a7967950`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 15 Aug 2017 19:00:40 GMT
ENV CHRONOGRAF_VERSION=1.3.6.1
# Tue, 15 Aug 2017 19:00:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 15 Aug 2017 19:00:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 15 Aug 2017 19:00:49 GMT
EXPOSE 8888/tcp
# Tue, 15 Aug 2017 19:00:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 15 Aug 2017 19:00:49 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 15 Aug 2017 19:00:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Aug 2017 19:00:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad389acb6e4e5e6e1dffb113e18ba8b7c0f7623f2ae59c092ba7f2e077996a7`  
		Last Modified: Tue, 15 Aug 2017 19:01:29 GMT  
		Size: 5.8 MB (5775333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd37c850df3832be34111c7df81c6914f0a017a06e91228ac916fa192b995ce`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930757704f4da2e87feb6216e46f8a962ac0ce79d0deb601629bc3b4b872d716`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cec8d6760d63b31001d207d17aedfb7676208607c471ca149556bbbc3c5475`  
		Last Modified: Tue, 15 Aug 2017 19:01:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
