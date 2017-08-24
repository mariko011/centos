<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.7`](#chronograf137)
-	[`chronograf:1.3.7.0`](#chronograf1370)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.7-alpine`](#chronograf137-alpine)
-	[`chronograf:1.3.7.0-alpine`](#chronograf1370-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:6a745f029f8db8b85041bb3061b542f2c08643a8dbbcc45c3b4a6d48d9699c88
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41169751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb90617ff71dc2f3ab4e8eb37ca3e01f1f7391df8e09bb16af16e48454d6d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 24 Aug 2017 17:59:42 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:12 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:13 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:13 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:14 GMT
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
	-	`sha256:3133e217bb85adbc45985295833deb0399f1a22c16acce8bb7ec0235885c90eb`  
		Last Modified: Thu, 24 Aug 2017 18:00:38 GMT  
		Size: 11.0 MB (11016882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163aeea63c28e77a59c011735a99f839596e5a96284cc58823515e788f41101`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851035aa17b41d0b42bc118adf3cd51328b7b1820fb0df85812aaeafa3fb75bb`  
		Last Modified: Thu, 24 Aug 2017 18:00:36 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d9446de89531e93f035365c37f30419264f7d1b6becd5f7515036863beead`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7`

```console
$ docker pull chronograf@sha256:6a745f029f8db8b85041bb3061b542f2c08643a8dbbcc45c3b4a6d48d9699c88
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41169751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb90617ff71dc2f3ab4e8eb37ca3e01f1f7391df8e09bb16af16e48454d6d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 24 Aug 2017 17:59:42 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:12 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:13 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:13 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:14 GMT
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
	-	`sha256:3133e217bb85adbc45985295833deb0399f1a22c16acce8bb7ec0235885c90eb`  
		Last Modified: Thu, 24 Aug 2017 18:00:38 GMT  
		Size: 11.0 MB (11016882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163aeea63c28e77a59c011735a99f839596e5a96284cc58823515e788f41101`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851035aa17b41d0b42bc118adf3cd51328b7b1820fb0df85812aaeafa3fb75bb`  
		Last Modified: Thu, 24 Aug 2017 18:00:36 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d9446de89531e93f035365c37f30419264f7d1b6becd5f7515036863beead`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7.0`

```console
$ docker pull chronograf@sha256:6a745f029f8db8b85041bb3061b542f2c08643a8dbbcc45c3b4a6d48d9699c88
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41169751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb90617ff71dc2f3ab4e8eb37ca3e01f1f7391df8e09bb16af16e48454d6d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 24 Aug 2017 17:59:42 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:12 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:13 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:13 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:14 GMT
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
	-	`sha256:3133e217bb85adbc45985295833deb0399f1a22c16acce8bb7ec0235885c90eb`  
		Last Modified: Thu, 24 Aug 2017 18:00:38 GMT  
		Size: 11.0 MB (11016882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163aeea63c28e77a59c011735a99f839596e5a96284cc58823515e788f41101`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851035aa17b41d0b42bc118adf3cd51328b7b1820fb0df85812aaeafa3fb75bb`  
		Last Modified: Thu, 24 Aug 2017 18:00:36 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d9446de89531e93f035365c37f30419264f7d1b6becd5f7515036863beead`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:6a745f029f8db8b85041bb3061b542f2c08643a8dbbcc45c3b4a6d48d9699c88
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41169751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb90617ff71dc2f3ab4e8eb37ca3e01f1f7391df8e09bb16af16e48454d6d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 24 Aug 2017 17:59:42 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:12 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:13 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:13 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:14 GMT
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
	-	`sha256:3133e217bb85adbc45985295833deb0399f1a22c16acce8bb7ec0235885c90eb`  
		Last Modified: Thu, 24 Aug 2017 18:00:38 GMT  
		Size: 11.0 MB (11016882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163aeea63c28e77a59c011735a99f839596e5a96284cc58823515e788f41101`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851035aa17b41d0b42bc118adf3cd51328b7b1820fb0df85812aaeafa3fb75bb`  
		Last Modified: Thu, 24 Aug 2017 18:00:36 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d9446de89531e93f035365c37f30419264f7d1b6becd5f7515036863beead`  
		Last Modified: Thu, 24 Aug 2017 18:00:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7.0-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
