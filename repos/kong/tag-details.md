<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.4`](#kong0104)
-	[`kong:0.11`](#kong011)
-	[`kong:0.11.1`](#kong0111)
-	[`kong:0.11.1-alpine`](#kong0111-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)
-	[`kong:latest`](#konglatest)

## `kong:0.10`

```console
$ docker pull kong@sha256:21906cabdbd11e6fef944dbae4527eaf13a7078890cfe5d9c1ae0cd08496da72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

```console
$ docker pull kong@sha256:3076c2cfe270f84d22044119bb566ff5804abb119694d46c8583861f493b2a3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126726264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894c11ab03427875c32bdaca48c6fb83eccbc82fc66728eb3164fb6db8e5f801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Sep 2017 15:30:23 GMT
ENV KONG_VERSION=0.10.3
# Thu, 14 Sep 2017 15:30:40 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Sep 2017 15:30:44 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 14 Sep 2017 15:30:44 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 14 Sep 2017 15:30:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 15:30:44 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 14 Sep 2017 15:30:44 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052d933f5529bdc57f67ca10dacdbdec8abeeccb1488e5caa27f1c08fe766b29`  
		Last Modified: Thu, 14 Sep 2017 15:31:53 GMT  
		Size: 53.3 MB (53313558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e32cb8391770142af04332c6ccd0c58f14a6804cbbcc72fff5c30a317135f8e`  
		Last Modified: Thu, 14 Sep 2017 15:31:45 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42934f4f03a5fdbe0410d5e51851c093624383b08f43bfec9c7415e322225ce`  
		Last Modified: Thu, 14 Sep 2017 15:31:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.4`

```console
$ docker pull kong@sha256:21906cabdbd11e6fef944dbae4527eaf13a7078890cfe5d9c1ae0cd08496da72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10.4` - linux; amd64

```console
$ docker pull kong@sha256:3076c2cfe270f84d22044119bb566ff5804abb119694d46c8583861f493b2a3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126726264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894c11ab03427875c32bdaca48c6fb83eccbc82fc66728eb3164fb6db8e5f801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Sep 2017 15:30:23 GMT
ENV KONG_VERSION=0.10.3
# Thu, 14 Sep 2017 15:30:40 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Sep 2017 15:30:44 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 14 Sep 2017 15:30:44 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 14 Sep 2017 15:30:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 15:30:44 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 14 Sep 2017 15:30:44 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052d933f5529bdc57f67ca10dacdbdec8abeeccb1488e5caa27f1c08fe766b29`  
		Last Modified: Thu, 14 Sep 2017 15:31:53 GMT  
		Size: 53.3 MB (53313558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e32cb8391770142af04332c6ccd0c58f14a6804cbbcc72fff5c30a317135f8e`  
		Last Modified: Thu, 14 Sep 2017 15:31:45 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42934f4f03a5fdbe0410d5e51851c093624383b08f43bfec9c7415e322225ce`  
		Last Modified: Thu, 14 Sep 2017 15:31:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:4261df6cab2b690cc7a01c6dae1cb815696be34aad40d216e4041f601f3e56c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:f79fec444490134a17eb5faee5d991974af746227d2f37128c9256952442c89c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122427076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2604768d2757f4eaaeb37685abc41458a4a7c08e4450b79a88bdf5e14640387a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:26 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:50 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 26 Oct 2017 19:09:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:50 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:50 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:51 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc69b6ad2eb70af5598af4d835628fd15edbdb61e7239c6fab797cc1f5d521`  
		Last Modified: Thu, 26 Oct 2017 19:10:52 GMT  
		Size: 49.0 MB (49039805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9a8534421886ee0dd772ddbfa8ecef32debe26a7837472f9f3c8b0de5cdca`  
		Last Modified: Thu, 26 Oct 2017 19:10:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.1`

```console
$ docker pull kong@sha256:4261df6cab2b690cc7a01c6dae1cb815696be34aad40d216e4041f601f3e56c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.1` - linux; amd64

```console
$ docker pull kong@sha256:f79fec444490134a17eb5faee5d991974af746227d2f37128c9256952442c89c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122427076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2604768d2757f4eaaeb37685abc41458a4a7c08e4450b79a88bdf5e14640387a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:26 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:50 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 26 Oct 2017 19:09:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:50 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:50 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:51 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc69b6ad2eb70af5598af4d835628fd15edbdb61e7239c6fab797cc1f5d521`  
		Last Modified: Thu, 26 Oct 2017 19:10:52 GMT  
		Size: 49.0 MB (49039805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9a8534421886ee0dd772ddbfa8ecef32debe26a7837472f9f3c8b0de5cdca`  
		Last Modified: Thu, 26 Oct 2017 19:10:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.1-alpine`

```console
$ docker pull kong@sha256:e2b2b657cdb610add2a9090cfa41aa59eafb2767bd587681d157444f69ceaebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:31e627aa9d410c2c74748705dbb6c6486d0ad64f84a0318cf447027ed8678a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29635264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfed65607a1d9ff3a67ab5ee35af8678589562735f02cb0944d9d5e58cda06f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:29:46 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:07 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:07 GMT
ENV KONG_SHA256=2291f92a935d850fe850394834c7737e99a82c37b0024637b4e17adfa1a4ef28
# Thu, 26 Oct 2017 19:09:18 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 19:09:18 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:18 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:19 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:19 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb483064b423d851c6d700ae52bd92c4cecc7279d78b8aae55d1f50e05a651`  
		Last Modified: Thu, 26 Oct 2017 19:10:24 GMT  
		Size: 27.6 MB (27643505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f543bfa4eb3bef9895ce446161a53ac5a38adbc64722846c9c77391f9afe883`  
		Last Modified: Thu, 26 Oct 2017 19:10:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:e2b2b657cdb610add2a9090cfa41aa59eafb2767bd587681d157444f69ceaebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:31e627aa9d410c2c74748705dbb6c6486d0ad64f84a0318cf447027ed8678a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29635264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfed65607a1d9ff3a67ab5ee35af8678589562735f02cb0944d9d5e58cda06f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:29:46 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:07 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:07 GMT
ENV KONG_SHA256=2291f92a935d850fe850394834c7737e99a82c37b0024637b4e17adfa1a4ef28
# Thu, 26 Oct 2017 19:09:18 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 19:09:18 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:18 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:19 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:19 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb483064b423d851c6d700ae52bd92c4cecc7279d78b8aae55d1f50e05a651`  
		Last Modified: Thu, 26 Oct 2017 19:10:24 GMT  
		Size: 27.6 MB (27643505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f543bfa4eb3bef9895ce446161a53ac5a38adbc64722846c9c77391f9afe883`  
		Last Modified: Thu, 26 Oct 2017 19:10:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:be342fa319f0cd989eb6df6dc10194b31b7bb7653a6630da8d073cfa85196a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

```console
$ docker pull kong@sha256:b27b6c30c9b9ac11fd74f99defe2cee843ebd322429b7b74b318dfdb20cd358c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126475473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3456bd2afcb52394db1fcd13d30beaff0f783faa39e484b166960a8efc36bb4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Sep 2017 15:30:47 GMT
ENV KONG_VERSION=0.9.9
# Thu, 14 Sep 2017 15:31:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Sep 2017 15:31:07 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 14 Sep 2017 15:31:07 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 14 Sep 2017 15:31:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 15:31:07 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 14 Sep 2017 15:31:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cca0fdde081046fa9bdca35e121ae68b104f4bb3532aa08f7bae8c84d922be`  
		Last Modified: Thu, 14 Sep 2017 15:32:15 GMT  
		Size: 53.1 MB (53062767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159e439b5f69ab0fce1510ba091364026acf172bb20afcff493b5cde0dbb03c`  
		Last Modified: Thu, 14 Sep 2017 15:32:07 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6505f2d152811c726bd8722f300c0889495747d7e41ac72c72852f3d65755`  
		Last Modified: Thu, 14 Sep 2017 15:32:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:be342fa319f0cd989eb6df6dc10194b31b7bb7653a6630da8d073cfa85196a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

```console
$ docker pull kong@sha256:b27b6c30c9b9ac11fd74f99defe2cee843ebd322429b7b74b318dfdb20cd358c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126475473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3456bd2afcb52394db1fcd13d30beaff0f783faa39e484b166960a8efc36bb4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Sep 2017 15:30:47 GMT
ENV KONG_VERSION=0.9.9
# Thu, 14 Sep 2017 15:31:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Sep 2017 15:31:07 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 14 Sep 2017 15:31:07 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 14 Sep 2017 15:31:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 15:31:07 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 14 Sep 2017 15:31:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cca0fdde081046fa9bdca35e121ae68b104f4bb3532aa08f7bae8c84d922be`  
		Last Modified: Thu, 14 Sep 2017 15:32:15 GMT  
		Size: 53.1 MB (53062767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159e439b5f69ab0fce1510ba091364026acf172bb20afcff493b5cde0dbb03c`  
		Last Modified: Thu, 14 Sep 2017 15:32:07 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6505f2d152811c726bd8722f300c0889495747d7e41ac72c72852f3d65755`  
		Last Modified: Thu, 14 Sep 2017 15:32:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:4261df6cab2b690cc7a01c6dae1cb815696be34aad40d216e4041f601f3e56c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:f79fec444490134a17eb5faee5d991974af746227d2f37128c9256952442c89c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122427076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2604768d2757f4eaaeb37685abc41458a4a7c08e4450b79a88bdf5e14640387a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:26 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:50 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 26 Oct 2017 19:09:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:50 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:50 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:51 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc69b6ad2eb70af5598af4d835628fd15edbdb61e7239c6fab797cc1f5d521`  
		Last Modified: Thu, 26 Oct 2017 19:10:52 GMT  
		Size: 49.0 MB (49039805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9a8534421886ee0dd772ddbfa8ecef32debe26a7837472f9f3c8b0de5cdca`  
		Last Modified: Thu, 26 Oct 2017 19:10:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
