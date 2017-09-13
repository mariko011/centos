<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.11.0-alpine`](#kong0110-alpine)
-	[`kong:0.11`](#kong011)
-	[`kong:0.11.0`](#kong0110)
-	[`kong:latest`](#konglatest)
-	[`kong:0.10`](#kong010)
-	[`kong:0.10.3`](#kong0103)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:14ce87bf7e3bc4dd3c96ea0c073867c55ae6a6878796a0ca6e9d237c6d1aabcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:3e736b69d657fb7b2fcd1d24681b24e42348a7071179c7df2b5509d8c0c09a68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd4c9e4146b99cf4ca946a1f3ca23938ac98f416b993cd1dcd1d642c4a71d41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 01:16:04 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:05 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:05 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Wed, 13 Sep 2017 01:16:17 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Wed, 13 Sep 2017 01:16:17 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:17 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:18 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f7d025fe27389b059e318efb760c49577ecb43a8a835669304ec347c6a9cbc`  
		Last Modified: Wed, 13 Sep 2017 01:17:43 GMT  
		Size: 27.7 MB (27652548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360b6b82be685db717323319900b5925ec3b665591c76386245c179d9d0ff3f`  
		Last Modified: Wed, 13 Sep 2017 01:17:36 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0-alpine`

```console
$ docker pull kong@sha256:14ce87bf7e3bc4dd3c96ea0c073867c55ae6a6878796a0ca6e9d237c6d1aabcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:3e736b69d657fb7b2fcd1d24681b24e42348a7071179c7df2b5509d8c0c09a68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd4c9e4146b99cf4ca946a1f3ca23938ac98f416b993cd1dcd1d642c4a71d41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 01:16:04 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:05 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:05 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Wed, 13 Sep 2017 01:16:17 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Wed, 13 Sep 2017 01:16:17 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:17 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:18 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f7d025fe27389b059e318efb760c49577ecb43a8a835669304ec347c6a9cbc`  
		Last Modified: Wed, 13 Sep 2017 01:17:43 GMT  
		Size: 27.7 MB (27652548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360b6b82be685db717323319900b5925ec3b665591c76386245c179d9d0ff3f`  
		Last Modified: Wed, 13 Sep 2017 01:17:36 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:c8b01e34acb7ddfad8ef77b8558e3f49782822b2c81336e4a5b8143b08102b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:2e25f54f4561c4882de8926f07138f8de1d9e12ee8a475af8ad4ad40e1609502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121022592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a314bd8141e7dc4efc7d0da0bac1e1d8b934061998d0c933901b091ba98db9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:18 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb87321589798c1788a2fc5275b0941c36ef041e5db8df60d94ce89b0431ec14`  
		Last Modified: Wed, 13 Sep 2017 01:18:01 GMT  
		Size: 48.8 MB (48774770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6ef3db6dd885c2628f4dd93f52a317fdcbed56569770f37be0bc743c0820d5`  
		Last Modified: Wed, 13 Sep 2017 01:17:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0`

```console
$ docker pull kong@sha256:c8b01e34acb7ddfad8ef77b8558e3f49782822b2c81336e4a5b8143b08102b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.0` - linux; amd64

```console
$ docker pull kong@sha256:2e25f54f4561c4882de8926f07138f8de1d9e12ee8a475af8ad4ad40e1609502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121022592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a314bd8141e7dc4efc7d0da0bac1e1d8b934061998d0c933901b091ba98db9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:18 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb87321589798c1788a2fc5275b0941c36ef041e5db8df60d94ce89b0431ec14`  
		Last Modified: Wed, 13 Sep 2017 01:18:01 GMT  
		Size: 48.8 MB (48774770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6ef3db6dd885c2628f4dd93f52a317fdcbed56569770f37be0bc743c0820d5`  
		Last Modified: Wed, 13 Sep 2017 01:17:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:c8b01e34acb7ddfad8ef77b8558e3f49782822b2c81336e4a5b8143b08102b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:2e25f54f4561c4882de8926f07138f8de1d9e12ee8a475af8ad4ad40e1609502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121022592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a314bd8141e7dc4efc7d0da0bac1e1d8b934061998d0c933901b091ba98db9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:18 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb87321589798c1788a2fc5275b0941c36ef041e5db8df60d94ce89b0431ec14`  
		Last Modified: Wed, 13 Sep 2017 01:18:01 GMT  
		Size: 48.8 MB (48774770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6ef3db6dd885c2628f4dd93f52a317fdcbed56569770f37be0bc743c0820d5`  
		Last Modified: Wed, 13 Sep 2017 01:17:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10`

```console
$ docker pull kong@sha256:2e647f5c1fc78f95701c711b899d3875d323baad5c7b958e7766e1c252a06585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

```console
$ docker pull kong@sha256:44680a6a09059f50978c0938447ceec007197bd441d637f41492cc19e94d2b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125285142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2cc8ca9636945744d9e7b5d89b6f45138dca04495f282b0fb25f8a4664d8bc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:34 GMT
ENV KONG_VERSION=0.10.3
# Wed, 13 Sep 2017 01:16:49 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:50 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 01:16:51 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:51 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 01:16:51 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f57e894d747bc07bc972e9ee2b56ca3a28cffa57f116b235a5afe0725c57f5`  
		Last Modified: Wed, 13 Sep 2017 01:18:23 GMT  
		Size: 53.0 MB (53011888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d4ccbe470a52041aef8290e176bf9ad31ce67acbcf31c0f68fb77c98b34da`  
		Last Modified: Wed, 13 Sep 2017 01:18:14 GMT  
		Size: 25.5 KB (25539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5dd6a4ca99ae4a29e5b9ff48de9c14a3e6344b1c42d968d695387d99710b77`  
		Last Modified: Wed, 13 Sep 2017 01:18:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.3`

```console
$ docker pull kong@sha256:2e647f5c1fc78f95701c711b899d3875d323baad5c7b958e7766e1c252a06585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10.3` - linux; amd64

```console
$ docker pull kong@sha256:44680a6a09059f50978c0938447ceec007197bd441d637f41492cc19e94d2b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125285142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2cc8ca9636945744d9e7b5d89b6f45138dca04495f282b0fb25f8a4664d8bc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:34 GMT
ENV KONG_VERSION=0.10.3
# Wed, 13 Sep 2017 01:16:49 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:50 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 01:16:51 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:51 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 01:16:51 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f57e894d747bc07bc972e9ee2b56ca3a28cffa57f116b235a5afe0725c57f5`  
		Last Modified: Wed, 13 Sep 2017 01:18:23 GMT  
		Size: 53.0 MB (53011888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d4ccbe470a52041aef8290e176bf9ad31ce67acbcf31c0f68fb77c98b34da`  
		Last Modified: Wed, 13 Sep 2017 01:18:14 GMT  
		Size: 25.5 KB (25539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5dd6a4ca99ae4a29e5b9ff48de9c14a3e6344b1c42d968d695387d99710b77`  
		Last Modified: Wed, 13 Sep 2017 01:18:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:2dd64253334a7292c2d1bee40274f21af6a30dec9b869f74907cc2c4921c8a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

```console
$ docker pull kong@sha256:bfd9667f1d7c09c5cee894b9fbc76c6161a37d6ff0f7d2c7ffacb21e14ebfe95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125002530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae3156e8f0bda714095f6bbbfbb824861daae16d6366a066ce204ebf89cab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:52 GMT
ENV KONG_VERSION=0.9.9
# Wed, 13 Sep 2017 01:17:23 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:17:25 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 01:17:26 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:17:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:17:26 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 01:17:26 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2eae4278bb26a87b8f44b0c7ceb83ef985919807542fd710fe0c44778975c20`  
		Last Modified: Wed, 13 Sep 2017 01:18:42 GMT  
		Size: 52.7 MB (52729278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71588452f852de2aa5af42ca3528524191d4fe1e3ad3f025fdc249eac007326f`  
		Last Modified: Wed, 13 Sep 2017 01:18:34 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365ded21bc8e4bb13b7bd0b6877c1d40fe8bd5a9e00baed4201d81aa84fc7cd`  
		Last Modified: Wed, 13 Sep 2017 01:18:34 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:2dd64253334a7292c2d1bee40274f21af6a30dec9b869f74907cc2c4921c8a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

```console
$ docker pull kong@sha256:bfd9667f1d7c09c5cee894b9fbc76c6161a37d6ff0f7d2c7ffacb21e14ebfe95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125002530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae3156e8f0bda714095f6bbbfbb824861daae16d6366a066ce204ebf89cab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:52 GMT
ENV KONG_VERSION=0.9.9
# Wed, 13 Sep 2017 01:17:23 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:17:25 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 01:17:26 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:17:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:17:26 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 01:17:26 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2eae4278bb26a87b8f44b0c7ceb83ef985919807542fd710fe0c44778975c20`  
		Last Modified: Wed, 13 Sep 2017 01:18:42 GMT  
		Size: 52.7 MB (52729278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71588452f852de2aa5af42ca3528524191d4fe1e3ad3f025fdc249eac007326f`  
		Last Modified: Wed, 13 Sep 2017 01:18:34 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365ded21bc8e4bb13b7bd0b6877c1d40fe8bd5a9e00baed4201d81aa84fc7cd`  
		Last Modified: Wed, 13 Sep 2017 01:18:34 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
