## `chronograf:latest`

```console
$ docker pull chronograf@sha256:568bbe1c6d44ac840a8e25ebcf5e5326f4ac448a4b0bd2dcbe39161981ed10d4
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41108307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214f4a3eee34e4be16ceb867dade0fc0c1ce045259d1d12f9edc24d534aaf522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 20:50:38 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:05 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:11 GMT
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
	-	`sha256:d6644a660d5febb6b9e8ec7f7f32f24e4b10b0b6e3b8ac0a49002203e8b64628`  
		Last Modified: Tue, 08 Aug 2017 20:51:40 GMT  
		Size: 11.0 MB (10955441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119aa2504ce879f5080b411957e6edac5efce5df6ba80f101c295fb561f05586`  
		Last Modified: Tue, 08 Aug 2017 20:51:43 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d31c2173bc86651f3593142d093394082fbaede760228d3de1713313eb7a3c`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8df7abaf2c194de7cb66d660d614df039bdfb74144255113f5573c986bbfd9`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
