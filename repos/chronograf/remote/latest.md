## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d036fbeb0fe698a995f211288c46d3002ce9949d4929e97931f8b1dc79a9fa06
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3d6e2e73d85a70d02fb0cb2928f5d4730604aa50046ddabb87a08dc4718dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 17:42:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:24 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 17:43:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:26 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fd8a122348eac1b78a758ae613295762bab87db0f05d28d6f10fe0f65ef573`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9717857beda4ace8783aecec8a362838fec39586203973e589aeefbbc7e0a9cc`  
		Last Modified: Tue, 12 Sep 2017 17:43:56 GMT  
		Size: 11.1 MB (11054191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b54ab8507e7a43e0f82a57219f12a72808146fdc90a7ef83cb2c8218efd`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64018c3f7048c9e2cbec6d298294546dc6ee643ce5149dfbf9eeeac0c8e6773`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f875fc874f7f7fd1c357b245506fe65b6bb7e66629870afc23605b7a56a73ff`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
