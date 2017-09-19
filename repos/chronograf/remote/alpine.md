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
