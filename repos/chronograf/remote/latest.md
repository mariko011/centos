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
