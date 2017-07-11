## `chronograf:latest`

```console
$ docker pull chronograf@sha256:847b0543a8881ab1a180f0ffad7162ea0d259d270bd216c4009f1bd57ae8a1c4
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41028784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a01d962d4eb9071b32ccbff083e9f6b4c11a3d0cec9a0877e9a520021333be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 10 Jul 2017 23:36:08 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:28 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:30 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:30 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15120ad01b24533b5a5b037d3fe200194d9fa1509ea6a73d2eacb92bf8b8ff`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70bb5b4a4b5d70e1e6db7411913398709fc56f98fe937c139e61f295b6d44b3`  
		Last Modified: Mon, 10 Jul 2017 23:37:04 GMT  
		Size: 10.9 MB (10867346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feaba91193bdf2efe6398e3fb8948165c95642e99afd8e57ff64e3e82a94740`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c27efa7cdc0595b952121a3c6c0a12e2582a94991af0caf0390588f5e6aa4`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fe785c49466778fdc37bf50ba00d2c29e96e11ff08afc290fa2cddc466f4ba`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
