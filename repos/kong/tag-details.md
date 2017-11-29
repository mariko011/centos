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
$ docker pull kong@sha256:8cb8ac7dbd303f18d329f8336f1fb929c12ae0231bd62fe7d055c38dab70b613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:5d9caac6e25a8bbcb803d57b7ee162b9272ac31f8148f4072cede4f78d6bd998
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122428684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659c41227bb617ee64d919a733c73709de93e8af190b1b76b69d94fa8163a94e`
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
# Sat, 04 Nov 2017 14:02:43 GMT
ENV KONG_VERSION=0.11.1
# Sat, 04 Nov 2017 14:03:11 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:03:12 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:03:12 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 04 Nov 2017 14:03:12 GMT
STOPSIGNAL [SIGTERM]
# Sat, 04 Nov 2017 14:03:13 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7246e83a372de9b8aacf3fe19bf0ffe0337aaae185c6567a38cffd3e7ff75b7f`  
		Last Modified: Sat, 04 Nov 2017 14:04:50 GMT  
		Size: 49.0 MB (49041414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695e4ef90ebded1a598ae801df11f4227278597ab89f6d969b3ac544ce38e4b`  
		Last Modified: Sat, 04 Nov 2017 14:04:43 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:8cb8ac7dbd303f18d329f8336f1fb929c12ae0231bd62fe7d055c38dab70b613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:5d9caac6e25a8bbcb803d57b7ee162b9272ac31f8148f4072cede4f78d6bd998
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122428684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659c41227bb617ee64d919a733c73709de93e8af190b1b76b69d94fa8163a94e`
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
# Sat, 04 Nov 2017 14:02:43 GMT
ENV KONG_VERSION=0.11.1
# Sat, 04 Nov 2017 14:03:11 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:03:12 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:03:12 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 04 Nov 2017 14:03:12 GMT
STOPSIGNAL [SIGTERM]
# Sat, 04 Nov 2017 14:03:13 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7246e83a372de9b8aacf3fe19bf0ffe0337aaae185c6567a38cffd3e7ff75b7f`  
		Last Modified: Sat, 04 Nov 2017 14:04:50 GMT  
		Size: 49.0 MB (49041414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695e4ef90ebded1a598ae801df11f4227278597ab89f6d969b3ac544ce38e4b`  
		Last Modified: Sat, 04 Nov 2017 14:04:43 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:fa7cacedb986d36b17c0cafcd8721d6910b05f8416ba578c80c5479595a5ae36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:300ee02727d02405296eafebf1f219f0e6822d2dc3fd973436e4008357bf3c9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29635178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117c6b9ab3569d4bfd75e5c3ceea18d3506c3b2832ac2989cd398a4a8affee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 14:02:25 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:02:26 GMT
ENV KONG_VERSION=0.11.1
# Sat, 04 Nov 2017 14:02:26 GMT
ENV KONG_SHA256=2291f92a935d850fe850394834c7737e99a82c37b0024637b4e17adfa1a4ef28
# Sat, 04 Nov 2017 14:02:37 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 14:02:38 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:02:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:02:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 04 Nov 2017 14:02:38 GMT
STOPSIGNAL [SIGTERM]
# Sat, 04 Nov 2017 14:02:38 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e706f68fe45892a244672a960e75c359bf614244ac9a2d0ebb2f1a889b4e54b6`  
		Last Modified: Sat, 04 Nov 2017 14:04:31 GMT  
		Size: 27.6 MB (27643421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db9f9f916bd0f1c238a241447fe519ab1f4d2c995cdea32ac3f050d109cb1db`  
		Last Modified: Sat, 04 Nov 2017 14:04:26 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:fa7cacedb986d36b17c0cafcd8721d6910b05f8416ba578c80c5479595a5ae36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:300ee02727d02405296eafebf1f219f0e6822d2dc3fd973436e4008357bf3c9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29635178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117c6b9ab3569d4bfd75e5c3ceea18d3506c3b2832ac2989cd398a4a8affee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 14:02:25 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 04 Nov 2017 14:02:26 GMT
ENV KONG_VERSION=0.11.1
# Sat, 04 Nov 2017 14:02:26 GMT
ENV KONG_SHA256=2291f92a935d850fe850394834c7737e99a82c37b0024637b4e17adfa1a4ef28
# Sat, 04 Nov 2017 14:02:37 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 14:02:38 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:02:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:02:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 04 Nov 2017 14:02:38 GMT
STOPSIGNAL [SIGTERM]
# Sat, 04 Nov 2017 14:02:38 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e706f68fe45892a244672a960e75c359bf614244ac9a2d0ebb2f1a889b4e54b6`  
		Last Modified: Sat, 04 Nov 2017 14:04:31 GMT  
		Size: 27.6 MB (27643421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db9f9f916bd0f1c238a241447fe519ab1f4d2c995cdea32ac3f050d109cb1db`  
		Last Modified: Sat, 04 Nov 2017 14:04:26 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:8cb8ac7dbd303f18d329f8336f1fb929c12ae0231bd62fe7d055c38dab70b613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:5d9caac6e25a8bbcb803d57b7ee162b9272ac31f8148f4072cede4f78d6bd998
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122428684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659c41227bb617ee64d919a733c73709de93e8af190b1b76b69d94fa8163a94e`
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
# Sat, 04 Nov 2017 14:02:43 GMT
ENV KONG_VERSION=0.11.1
# Sat, 04 Nov 2017 14:03:11 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 04 Nov 2017 14:03:12 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:03:12 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 04 Nov 2017 14:03:12 GMT
STOPSIGNAL [SIGTERM]
# Sat, 04 Nov 2017 14:03:13 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7246e83a372de9b8aacf3fe19bf0ffe0337aaae185c6567a38cffd3e7ff75b7f`  
		Last Modified: Sat, 04 Nov 2017 14:04:50 GMT  
		Size: 49.0 MB (49041414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695e4ef90ebded1a598ae801df11f4227278597ab89f6d969b3ac544ce38e4b`  
		Last Modified: Sat, 04 Nov 2017 14:04:43 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
