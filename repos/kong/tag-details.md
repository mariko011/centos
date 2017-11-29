<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.4`](#kong0104)
-	[`kong:0.11`](#kong011)
-	[`kong:0.11.2`](#kong0112)
-	[`kong:0.11.2-alpine`](#kong0112-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)
-	[`kong:latest`](#konglatest)

## `kong:0.10`

```console
$ docker pull kong@sha256:9fbb56c4850e0d2547e7f75f37fc9c70a8a43686baa6608e889f1d9969f1b26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

```console
$ docker pull kong@sha256:46a0aec9f9401ee072480e859e4d5ad904d5210dd5a5801d797ff41c1ed65812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125814800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff1e4b7ba41ecb251b4868e29101c8db8a68f708f4f6271dcbfa4c1eebbe162`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:03:17 GMT
ENV KONG_VERSION=0.10.4
# Sat, 04 Nov 2017 14:03:38 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:03:41 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Sat, 04 Nov 2017 14:03:41 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:03:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:03:41 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Sat, 04 Nov 2017 14:03:42 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4798db49f9301066f1b5fcdd38c109a9751f89f945adf9966ec9815eb1aaac75`  
		Last Modified: Sat, 04 Nov 2017 14:05:23 GMT  
		Size: 52.4 MB (52402093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa0a6c86760322ddf159347163d96823ca731f98d3cd5f75d9317b4e611909`  
		Last Modified: Sat, 04 Nov 2017 14:05:07 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ff91791fcbaceacd4f82b35609e2d929328588326eba8fb614ef31e366dd7`  
		Last Modified: Sat, 04 Nov 2017 14:05:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.4`

```console
$ docker pull kong@sha256:9fbb56c4850e0d2547e7f75f37fc9c70a8a43686baa6608e889f1d9969f1b26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10.4` - linux; amd64

```console
$ docker pull kong@sha256:46a0aec9f9401ee072480e859e4d5ad904d5210dd5a5801d797ff41c1ed65812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125814800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff1e4b7ba41ecb251b4868e29101c8db8a68f708f4f6271dcbfa4c1eebbe162`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:03:17 GMT
ENV KONG_VERSION=0.10.4
# Sat, 04 Nov 2017 14:03:38 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:03:41 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Sat, 04 Nov 2017 14:03:41 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:03:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:03:41 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Sat, 04 Nov 2017 14:03:42 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4798db49f9301066f1b5fcdd38c109a9751f89f945adf9966ec9815eb1aaac75`  
		Last Modified: Sat, 04 Nov 2017 14:05:23 GMT  
		Size: 52.4 MB (52402093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa0a6c86760322ddf159347163d96823ca731f98d3cd5f75d9317b4e611909`  
		Last Modified: Sat, 04 Nov 2017 14:05:07 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ff91791fcbaceacd4f82b35609e2d929328588326eba8fb614ef31e366dd7`  
		Last Modified: Sat, 04 Nov 2017 14:05:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:c5bd9abf633f86747df1983912df834d6a742aab29febaa7f87d0cef920cd4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:a8a3fdd54a259905bcfe1fe74e88c2478657a2ce6328736bc20188ab67683e71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122425045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb21e005fc3432fec64637b6cd54e604151dd391f0aacc67b3400ef2905fb21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 29 Nov 2017 20:10:31 GMT
ENV KONG_VERSION=0.11.2
# Wed, 29 Nov 2017 20:10:55 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 29 Nov 2017 20:10:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 29 Nov 2017 20:10:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 20:10:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 29 Nov 2017 20:10:56 GMT
STOPSIGNAL [SIGTERM]
# Wed, 29 Nov 2017 20:10:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5670653a0c894f1b8fef701102db59238082b7c42bf69f576178eccecd2e7cf`  
		Last Modified: Wed, 29 Nov 2017 20:11:38 GMT  
		Size: 49.0 MB (49037775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7766a5ec63d0229b1739a2d9bff6972060b8703ee0d341af1248eb6b38119560`  
		Last Modified: Wed, 29 Nov 2017 20:11:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:c5bd9abf633f86747df1983912df834d6a742aab29febaa7f87d0cef920cd4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:a8a3fdd54a259905bcfe1fe74e88c2478657a2ce6328736bc20188ab67683e71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122425045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb21e005fc3432fec64637b6cd54e604151dd391f0aacc67b3400ef2905fb21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 29 Nov 2017 20:10:31 GMT
ENV KONG_VERSION=0.11.2
# Wed, 29 Nov 2017 20:10:55 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 29 Nov 2017 20:10:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 29 Nov 2017 20:10:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 20:10:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 29 Nov 2017 20:10:56 GMT
STOPSIGNAL [SIGTERM]
# Wed, 29 Nov 2017 20:10:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5670653a0c894f1b8fef701102db59238082b7c42bf69f576178eccecd2e7cf`  
		Last Modified: Wed, 29 Nov 2017 20:11:38 GMT  
		Size: 49.0 MB (49037775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7766a5ec63d0229b1739a2d9bff6972060b8703ee0d341af1248eb6b38119560`  
		Last Modified: Wed, 29 Nov 2017 20:11:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:8939a7fbf251a54fb1f7239297d8c561b7e7c0a9c770fef104192d171f152459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c97ece931e61eee30a2f42db5d090f8084484d9a84f181ce3d41fd4a98765d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73fa25bfdebcd833efcf288f3d080c95ef64e112bc2710a3b2ed8c285a22321`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Wed, 29 Nov 2017 20:10:07 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 29 Nov 2017 20:10:07 GMT
ENV KONG_VERSION=0.11.2
# Wed, 29 Nov 2017 20:10:07 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Wed, 29 Nov 2017 20:10:23 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 29 Nov 2017 20:10:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 29 Nov 2017 20:10:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 20:10:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 29 Nov 2017 20:10:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 29 Nov 2017 20:10:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d241d7d59a477e17bac04e994ef1e8e960ef0e64bc8ebd00d7c01c85540faf1`  
		Last Modified: Wed, 29 Nov 2017 20:11:13 GMT  
		Size: 28.0 MB (28040450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085ac17fd58c9e74e5cd1a4d4bdb41507749e9e7070aae4776541ae1b288618f`  
		Last Modified: Wed, 29 Nov 2017 20:11:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:8939a7fbf251a54fb1f7239297d8c561b7e7c0a9c770fef104192d171f152459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c97ece931e61eee30a2f42db5d090f8084484d9a84f181ce3d41fd4a98765d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73fa25bfdebcd833efcf288f3d080c95ef64e112bc2710a3b2ed8c285a22321`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Wed, 29 Nov 2017 20:10:07 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 29 Nov 2017 20:10:07 GMT
ENV KONG_VERSION=0.11.2
# Wed, 29 Nov 2017 20:10:07 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Wed, 29 Nov 2017 20:10:23 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 29 Nov 2017 20:10:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 29 Nov 2017 20:10:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 20:10:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 29 Nov 2017 20:10:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 29 Nov 2017 20:10:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d241d7d59a477e17bac04e994ef1e8e960ef0e64bc8ebd00d7c01c85540faf1`  
		Last Modified: Wed, 29 Nov 2017 20:11:13 GMT  
		Size: 28.0 MB (28040450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085ac17fd58c9e74e5cd1a4d4bdb41507749e9e7070aae4776541ae1b288618f`  
		Last Modified: Wed, 29 Nov 2017 20:11:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:1f127a38507fb819324e840773987fd827b31a2dc1f3912a1506bd8e44d33fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

```console
$ docker pull kong@sha256:8d9f95476dee52b9b1afec0e7ead19ced572849aa39d3d3b2bfe1ff01db32542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136639944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1a9431330dc035d8996903773adc901c0376d5d344524f5b481fc8cbe5eb73`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:03:47 GMT
ENV KONG_VERSION=0.9.9
# Sat, 04 Nov 2017 14:04:13 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:04:15 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Sat, 04 Nov 2017 14:04:15 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:04:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:04:16 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Sat, 04 Nov 2017 14:04:16 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe26fbb0260afb8506120d23a3cf6b3005c2f097c9bf09cc8a67b579747b5c`  
		Last Modified: Sat, 04 Nov 2017 14:05:45 GMT  
		Size: 63.2 MB (63227237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d6d29ad056677b3996bf5880428cdb274b0bfcb0b35102ef2ce4e867953534`  
		Last Modified: Sat, 04 Nov 2017 14:05:36 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb9fb7d884aa273221ff4403c916318f081356b1e1f3e675b393888e0f11e8e`  
		Last Modified: Sat, 04 Nov 2017 14:05:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:1f127a38507fb819324e840773987fd827b31a2dc1f3912a1506bd8e44d33fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

```console
$ docker pull kong@sha256:8d9f95476dee52b9b1afec0e7ead19ced572849aa39d3d3b2bfe1ff01db32542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136639944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1a9431330dc035d8996903773adc901c0376d5d344524f5b481fc8cbe5eb73`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:03:47 GMT
ENV KONG_VERSION=0.9.9
# Sat, 04 Nov 2017 14:04:13 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:04:15 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Sat, 04 Nov 2017 14:04:15 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:04:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:04:16 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Sat, 04 Nov 2017 14:04:16 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe26fbb0260afb8506120d23a3cf6b3005c2f097c9bf09cc8a67b579747b5c`  
		Last Modified: Sat, 04 Nov 2017 14:05:45 GMT  
		Size: 63.2 MB (63227237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d6d29ad056677b3996bf5880428cdb274b0bfcb0b35102ef2ce4e867953534`  
		Last Modified: Sat, 04 Nov 2017 14:05:36 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb9fb7d884aa273221ff4403c916318f081356b1e1f3e675b393888e0f11e8e`  
		Last Modified: Sat, 04 Nov 2017 14:05:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:c5bd9abf633f86747df1983912df834d6a742aab29febaa7f87d0cef920cd4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:a8a3fdd54a259905bcfe1fe74e88c2478657a2ce6328736bc20188ab67683e71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122425045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb21e005fc3432fec64637b6cd54e604151dd391f0aacc67b3400ef2905fb21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 14:02:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 29 Nov 2017 20:10:31 GMT
ENV KONG_VERSION=0.11.2
# Wed, 29 Nov 2017 20:10:55 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 29 Nov 2017 20:10:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 29 Nov 2017 20:10:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 20:10:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 29 Nov 2017 20:10:56 GMT
STOPSIGNAL [SIGTERM]
# Wed, 29 Nov 2017 20:10:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5670653a0c894f1b8fef701102db59238082b7c42bf69f576178eccecd2e7cf`  
		Last Modified: Wed, 29 Nov 2017 20:11:38 GMT  
		Size: 49.0 MB (49037775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7766a5ec63d0229b1739a2d9bff6972060b8703ee0d341af1248eb6b38119560`  
		Last Modified: Wed, 29 Nov 2017 20:11:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
