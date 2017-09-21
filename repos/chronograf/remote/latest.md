## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d44f2b7ccc8707a520a638ad458f8cde87854aade08398b07a1a19d763e2021d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:2c5353efcd09e89761c38eec89cea69df173060e312957d5156729bbf4e62eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b838f6a96c3d6358a1c90a2f64e8cddef081f519876245e06a88399effc11f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:11 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Thu, 21 Sep 2017 20:18:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:18:45 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 21 Sep 2017 20:18:46 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 21 Sep 2017 20:18:46 GMT
EXPOSE 8888/tcp
# Thu, 21 Sep 2017 20:18:46 GMT
VOLUME [/var/lib/chronograf]
# Thu, 21 Sep 2017 20:18:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 21 Sep 2017 20:18:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 20:18:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cda3a2afb9308b46ed3feaf7952d4ebae42b6bc1dfa7c64004b1b228e28a9b`  
		Last Modified: Thu, 21 Sep 2017 16:40:52 GMT  
		Size: 4.5 MB (4505228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ce3c4069547e75ed4ca2a3bebbf707c254c44d4e30c5144b58de724ca912a9`  
		Last Modified: Thu, 21 Sep 2017 20:19:08 GMT  
		Size: 13.1 MB (13119920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c94d28ed85416202c161144c9a98da452c0f6191d5a6b6ffab781fc5e62043`  
		Last Modified: Thu, 21 Sep 2017 20:19:06 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775ce383ecfa1bd7ad493168369335897a03df829d92d130c4cf5610a6076ed1`  
		Last Modified: Thu, 21 Sep 2017 20:19:05 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8884dc5bd08bd2838c0fd40944812b8a981ccdb93ff82fe488827981d9bb54e`  
		Last Modified: Thu, 21 Sep 2017 20:19:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:fa352d73c7ffc3aec782bc5126e108ae71cfa681e59d485f9d509f4b8a13cee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34948330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb629eb479a64fd6f6eb51b2586e494c1076731520eba767fc0c45236391b2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:44 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Thu, 21 Sep 2017 17:16:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 17:16:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 21 Sep 2017 17:16:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 21 Sep 2017 17:16:44 GMT
EXPOSE 8888/tcp
# Thu, 21 Sep 2017 17:16:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 21 Sep 2017 17:16:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 21 Sep 2017 17:16:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:16:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b9e1a3a96b1b2da9adab688b4cfca8653aac8d08a33b7f7479ebdc209fab70`  
		Last Modified: Thu, 21 Sep 2017 17:17:27 GMT  
		Size: 3.9 MB (3878217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bbc63fe21b7d5c79dfeca335818a416a5ed6aa89343a8b2dbcec58eec2f794`  
		Last Modified: Thu, 21 Sep 2017 17:17:32 GMT  
		Size: 11.8 MB (11767812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a11e6f20351308d54f80781a3180df77aa96c119e9735b0a7ead92ec18ab47`  
		Last Modified: Thu, 21 Sep 2017 17:17:26 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8372b8ed62065628afef19b40ad6dc7ea57236758129356b2ad52ee64369bd`  
		Last Modified: Thu, 21 Sep 2017 17:17:25 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb9509cd807eb2e32ead8c0b38cdd7aa4f4b32ff00724a4b058105cbd6e5c03`  
		Last Modified: Thu, 21 Sep 2017 17:17:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:3d1ecbe4a990547377f8db8a773ee6e2d484f3ec4b7fa04e16e3c2359fbac38c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36408689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506cc5ed9a4eca360678c94069e6eaf62acd933b0353d0bdcbefd460362cc012`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:58 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Thu, 21 Sep 2017 16:53:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 16:53:28 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 21 Sep 2017 16:53:28 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 21 Sep 2017 16:53:29 GMT
EXPOSE 8888/tcp
# Thu, 21 Sep 2017 16:53:29 GMT
VOLUME [/var/lib/chronograf]
# Thu, 21 Sep 2017 16:53:30 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 21 Sep 2017 16:53:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:53:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ed626981ca362f27b5346771ee9943f3e6b7cc14c832ac502651cfa0f55e0`  
		Last Modified: Thu, 21 Sep 2017 16:53:54 GMT  
		Size: 4.1 MB (4079139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8463c76cbb6620ae2c6e1f0700ac52dd8734024b7f67bd1bcde6ff25e521e304`  
		Last Modified: Thu, 21 Sep 2017 16:53:57 GMT  
		Size: 12.0 MB (11967879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5244e16a6ddeac9ff7d0a83e2d91ac97c10f25e22fc54aea599d4fc7c8849a`  
		Last Modified: Thu, 21 Sep 2017 16:53:53 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f69552087ad6b1e1e8131e3623acdc9388366e5401b2b2454eacb02d45cf11f`  
		Last Modified: Thu, 21 Sep 2017 16:53:52 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f591342eadcd5338452a91c49ed4527ad1e3138b1bb6a8753828eefed2e52b`  
		Last Modified: Thu, 21 Sep 2017 16:53:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
