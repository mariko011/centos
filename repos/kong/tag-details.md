<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.3`](#kong0103)
-	[`kong:0.11`](#kong011)
-	[`kong:0.11.0`](#kong0110)
-	[`kong:0.11.0-alpine`](#kong0110-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)
-	[`kong:latest`](#konglatest)

## `kong:0.10`

```console
$ docker pull kong@sha256:1d6728e359c4612c75570960320ac9b360e373e3b4c41155b5ad298220844075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

```console
$ docker pull kong@sha256:6bf6015b92cbab19fea6787c05c59e3b399b38a0a166ed5c5c335d310adc233d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125296144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a6fd68d8decabb579a2058de9e40fb52b842c826031d29f2277dce7350bdd3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:39 GMT
ENV KONG_VERSION=0.10.3
# Wed, 13 Sep 2017 15:08:55 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:56 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 15:08:56 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:57 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 15:08:57 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db27e282aad6c41d8543715dd99ee286f3cc6b483bf802c95a22fd559fd528db`  
		Last Modified: Wed, 13 Sep 2017 15:10:29 GMT  
		Size: 53.0 MB (53012509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d684611d3e67392ef70d9d7f136de42d8b388deaf6644a0f266f2143cae66ae`  
		Last Modified: Wed, 13 Sep 2017 15:10:20 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353d5b720c1a89031f0404b02b11c47ec4f31365eef17f824d2e737801e4173`  
		Last Modified: Wed, 13 Sep 2017 15:10:20 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.3`

```console
$ docker pull kong@sha256:1d6728e359c4612c75570960320ac9b360e373e3b4c41155b5ad298220844075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10.3` - linux; amd64

```console
$ docker pull kong@sha256:6bf6015b92cbab19fea6787c05c59e3b399b38a0a166ed5c5c335d310adc233d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125296144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a6fd68d8decabb579a2058de9e40fb52b842c826031d29f2277dce7350bdd3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:39 GMT
ENV KONG_VERSION=0.10.3
# Wed, 13 Sep 2017 15:08:55 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:56 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 15:08:56 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:57 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 15:08:57 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db27e282aad6c41d8543715dd99ee286f3cc6b483bf802c95a22fd559fd528db`  
		Last Modified: Wed, 13 Sep 2017 15:10:29 GMT  
		Size: 53.0 MB (53012509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d684611d3e67392ef70d9d7f136de42d8b388deaf6644a0f266f2143cae66ae`  
		Last Modified: Wed, 13 Sep 2017 15:10:20 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353d5b720c1a89031f0404b02b11c47ec4f31365eef17f824d2e737801e4173`  
		Last Modified: Wed, 13 Sep 2017 15:10:20 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:e3dae5b6c2c96f63c18d38f948063adb8973da709a937190d5772426a0f887be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:af97b2291c45e0c91205d5cbd6d268dc6e1f69e17d22cf9090e17cfede1e8462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121033954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23adb5933a68c99b1520f625d20102915840d05789a875964ff60eb046083173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:17 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:36 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:37 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:37 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:37 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:37 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b13c408290a729afe07f7e6eb6e42d38c780f1ee3a5b83139e53106f02f29a`  
		Last Modified: Wed, 13 Sep 2017 15:10:03 GMT  
		Size: 48.8 MB (48775754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fe98f8edc4e832fe8fe666d62c4faf59691ef631ebd457485ed1f942acbc8c`  
		Last Modified: Wed, 13 Sep 2017 15:09:56 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0`

```console
$ docker pull kong@sha256:e3dae5b6c2c96f63c18d38f948063adb8973da709a937190d5772426a0f887be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.0` - linux; amd64

```console
$ docker pull kong@sha256:af97b2291c45e0c91205d5cbd6d268dc6e1f69e17d22cf9090e17cfede1e8462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121033954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23adb5933a68c99b1520f625d20102915840d05789a875964ff60eb046083173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:17 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:36 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:37 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:37 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:37 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:37 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b13c408290a729afe07f7e6eb6e42d38c780f1ee3a5b83139e53106f02f29a`  
		Last Modified: Wed, 13 Sep 2017 15:10:03 GMT  
		Size: 48.8 MB (48775754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fe98f8edc4e832fe8fe666d62c4faf59691ef631ebd457485ed1f942acbc8c`  
		Last Modified: Wed, 13 Sep 2017 15:09:56 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0-alpine`

```console
$ docker pull kong@sha256:9e472cf80d6f882feadc20f30b6538a535cbe2071270af9e098f443188b27425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0a96e8b14a3385bb4e3250fe0335624943be31fa37aef9ac8fa301ec71470876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53207c4f9f5cc1cb23f98f8de4f109d3f28e4b0f0a89aefa0485ad3a5d2c7ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:08:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:07 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:07 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Wed, 13 Sep 2017 15:08:14 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Wed, 13 Sep 2017 15:08:14 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:15 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:15 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302f074c33811ca33103ba205e854540e7ba02a9a405e5c5097ed4b7136f94a5`  
		Last Modified: Wed, 13 Sep 2017 15:09:45 GMT  
		Size: 27.7 MB (27652712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f620b320e5faa10de01c3eb15293ac4821821c981b9ba5fbafe315a4215833f9`  
		Last Modified: Wed, 13 Sep 2017 15:09:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:9e472cf80d6f882feadc20f30b6538a535cbe2071270af9e098f443188b27425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0a96e8b14a3385bb4e3250fe0335624943be31fa37aef9ac8fa301ec71470876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53207c4f9f5cc1cb23f98f8de4f109d3f28e4b0f0a89aefa0485ad3a5d2c7ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:08:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:07 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:07 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Wed, 13 Sep 2017 15:08:14 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Wed, 13 Sep 2017 15:08:14 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:15 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:15 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302f074c33811ca33103ba205e854540e7ba02a9a405e5c5097ed4b7136f94a5`  
		Last Modified: Wed, 13 Sep 2017 15:09:45 GMT  
		Size: 27.7 MB (27652712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f620b320e5faa10de01c3eb15293ac4821821c981b9ba5fbafe315a4215833f9`  
		Last Modified: Wed, 13 Sep 2017 15:09:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:d7aa58137090b0d81a879f6c18c427ed18e718ef5a786f69d5aef694562f3448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

```console
$ docker pull kong@sha256:a9dc4eb4744815be0913b46141ef7f766c438513045e51634d92f85d583c7f6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125012883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9dcd935a676a95fff56e3cbabc58969c1227fbc103646c8ec95b7eb1757182`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:58 GMT
ENV KONG_VERSION=0.9.9
# Wed, 13 Sep 2017 15:09:29 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:09:30 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 15:09:31 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:09:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:09:31 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 15:09:31 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1db5cd7beaf1cefe8a01b33e623fb7b8bf9bd6474b0b714f67db29e86020b`  
		Last Modified: Wed, 13 Sep 2017 15:10:52 GMT  
		Size: 52.7 MB (52729247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cddb3ead91b3dec45dd60cfd824c6254d1dc8de589dc7700f302f81041d265`  
		Last Modified: Wed, 13 Sep 2017 15:10:42 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364889aaabc546b025da188a20cb5a5aa498df71d191a7dc05d1ee0558836a25`  
		Last Modified: Wed, 13 Sep 2017 15:10:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:d7aa58137090b0d81a879f6c18c427ed18e718ef5a786f69d5aef694562f3448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

```console
$ docker pull kong@sha256:a9dc4eb4744815be0913b46141ef7f766c438513045e51634d92f85d583c7f6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125012883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9dcd935a676a95fff56e3cbabc58969c1227fbc103646c8ec95b7eb1757182`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:58 GMT
ENV KONG_VERSION=0.9.9
# Wed, 13 Sep 2017 15:09:29 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:09:30 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 13 Sep 2017 15:09:31 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:09:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:09:31 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 13 Sep 2017 15:09:31 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1db5cd7beaf1cefe8a01b33e623fb7b8bf9bd6474b0b714f67db29e86020b`  
		Last Modified: Wed, 13 Sep 2017 15:10:52 GMT  
		Size: 52.7 MB (52729247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cddb3ead91b3dec45dd60cfd824c6254d1dc8de589dc7700f302f81041d265`  
		Last Modified: Wed, 13 Sep 2017 15:10:42 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364889aaabc546b025da188a20cb5a5aa498df71d191a7dc05d1ee0558836a25`  
		Last Modified: Wed, 13 Sep 2017 15:10:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:e3dae5b6c2c96f63c18d38f948063adb8973da709a937190d5772426a0f887be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:af97b2291c45e0c91205d5cbd6d268dc6e1f69e17d22cf9090e17cfede1e8462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121033954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23adb5933a68c99b1520f625d20102915840d05789a875964ff60eb046083173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:17 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:36 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:37 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:37 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:37 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:37 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b13c408290a729afe07f7e6eb6e42d38c780f1ee3a5b83139e53106f02f29a`  
		Last Modified: Wed, 13 Sep 2017 15:10:03 GMT  
		Size: 48.8 MB (48775754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fe98f8edc4e832fe8fe666d62c4faf59691ef631ebd457485ed1f942acbc8c`  
		Last Modified: Wed, 13 Sep 2017 15:09:56 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
