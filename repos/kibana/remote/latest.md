## `kibana:latest`

```console
$ docker pull kibana@sha256:09dc14ba5c64f45f9ab45ffa6f2a73647c94e88f662c4c4e0ebc9e098d9ab33e
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103067975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a3a5523aeff50c04b2b36f9703615e23858e7b73d61f9b6c898ef5ec3270f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:49:21 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 30 Aug 2016 21:49:33 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:49:33 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:49:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 21:49:39 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 30 Aug 2016 21:49:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 30 Aug 2016 21:50:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:35:50 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 06 Sep 2016 23:14:47 GMT
ENV KIBANA_VERSION=4.6.1
# Tue, 06 Sep 2016 23:14:48 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 06 Sep 2016 23:15:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 06 Sep 2016 23:15:06 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Sep 2016 23:15:06 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 06 Sep 2016 23:15:07 GMT
EXPOSE 5601/tcp
# Tue, 06 Sep 2016 23:15:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Sep 2016 23:15:07 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bdd4793f61f263856d786d2a07503904ad47abe3d85041249469ee8b2bc423`  
		Last Modified: Wed, 31 Aug 2016 17:36:26 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648ba3c2b8b01d433ae65b7fdb95a66d86a4ff0568fff8399c77a3093f6e047`  
		Last Modified: Wed, 31 Aug 2016 17:36:31 GMT  
		Size: 16.6 MB (16609284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe2ac8fea08cdce2408d6e4dc65c6420d20958e9cec7ea864110966627571e6`  
		Last Modified: Wed, 31 Aug 2016 17:36:25 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b64ac3e2036228dd3a45a738c71c49ed3ab10cfc3689f41861aa749423adf`  
		Last Modified: Wed, 31 Aug 2016 17:36:23 GMT  
		Size: 7.1 KB (7119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4608172435f1929d19fd92f7f46a755afc8295511933186788413181da08b8fe`  
		Last Modified: Wed, 31 Aug 2016 17:39:21 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3befdc2caff24114537e7dc77b982fd93d040b8cd059c9c953f129f128ab6c9`  
		Last Modified: Tue, 06 Sep 2016 23:16:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289326c53c5c08fe72f40a1b5f6c1cc5aea868b01b601b9a3ddc5623848a4aea`  
		Last Modified: Tue, 06 Sep 2016 23:17:05 GMT  
		Size: 34.3 MB (34270025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2185b6b37764ee0ca7ea5e9d8d5a8628cbf5d8b1a6431779367951eaa7e3a8b`  
		Last Modified: Tue, 06 Sep 2016 23:16:53 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
