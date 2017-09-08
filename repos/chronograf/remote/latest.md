## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f4bdbf988b1ec52d5e88c9b44a7c99b88bd6d638eed96032f17f460701f63be7
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41161175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1dd7c041b60da3bdcb9381321bf8d7f1b0ab7b34e19d8c5b5557cefd6891b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Sep 2017 23:59:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 07 Sep 2017 23:59:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Sep 2017 23:59:47 GMT
EXPOSE 8888/tcp
# Thu, 07 Sep 2017 23:59:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Sep 2017 23:59:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Sep 2017 23:59:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:59:49 GMT
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
	-	`sha256:a22e70b527dc9a9437888cc4adf9289793201cc5015e7dab7fe2fd26b72b1cad`  
		Last Modified: Fri, 08 Sep 2017 18:05:37 GMT  
		Size: 11.0 MB (11016887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f93bc1ea077925c53535ce5772a79a3ca27bc5744ed0dc97b1551b5803f6ae`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f9fc745575db19727415321204c1f1ec4ac7b7b4b164812fd19ccb1b838a05`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12411b4d9fbd52b540c0999cca1a326ce0bdce184abf584037c7e7479e7f4d`  
		Last Modified: Fri, 08 Sep 2017 18:05:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
