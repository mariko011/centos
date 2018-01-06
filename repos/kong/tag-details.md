<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.4`](#kong0104)
-	[`kong:0.11`](#kong011)
-	[`kong:0.11.2`](#kong0112)
-	[`kong:0.11.2-alpine`](#kong0112-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.12.0rc2`](#kong0120rc2)
-	[`kong:0.12.0rc2-alpine`](#kong0120rc2-alpine)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)
-	[`kong:latest`](#konglatest)

## `kong:0.10`

```console
$ docker pull kong@sha256:3ac338717771ddcb03662f6d442d142a812a60da4931b934305fe61d29360290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

```console
$ docker pull kong@sha256:2ff52eb16a08dae6923708609deff72bc09e23cd9d87c1d06342262c17f17d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125658758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db97c1ead3c726dcf83f4a2dbb3657aba2ab66f95397d0b05e862cc88f2591ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:37:08 GMT
ENV KONG_VERSION=0.10.4
# Thu, 30 Nov 2017 00:38:10 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:38:12 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 30 Nov 2017 00:38:12 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:38:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:38:12 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 30 Nov 2017 00:38:12 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2decfaa778076555e4c129e08afe4613406af0f96f5b869e87c4bfabef22b8`  
		Last Modified: Thu, 30 Nov 2017 00:40:19 GMT  
		Size: 52.2 MB (52206161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3682d107708af5ea514c4f77823318b2b236164a752a8ee79ff2a7db58e5761c`  
		Last Modified: Thu, 30 Nov 2017 00:40:10 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb3b5215e5f778bf8dd35d42bea9199f3f5b50444d91db9951f2e3e8d7a4e6a`  
		Last Modified: Thu, 30 Nov 2017 00:40:11 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.4`

```console
$ docker pull kong@sha256:3ac338717771ddcb03662f6d442d142a812a60da4931b934305fe61d29360290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.10.4` - linux; amd64

```console
$ docker pull kong@sha256:2ff52eb16a08dae6923708609deff72bc09e23cd9d87c1d06342262c17f17d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125658758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db97c1ead3c726dcf83f4a2dbb3657aba2ab66f95397d0b05e862cc88f2591ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:37:08 GMT
ENV KONG_VERSION=0.10.4
# Thu, 30 Nov 2017 00:38:10 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:38:12 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 30 Nov 2017 00:38:12 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:38:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:38:12 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 30 Nov 2017 00:38:12 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2decfaa778076555e4c129e08afe4613406af0f96f5b869e87c4bfabef22b8`  
		Last Modified: Thu, 30 Nov 2017 00:40:19 GMT  
		Size: 52.2 MB (52206161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3682d107708af5ea514c4f77823318b2b236164a752a8ee79ff2a7db58e5761c`  
		Last Modified: Thu, 30 Nov 2017 00:40:10 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb3b5215e5f778bf8dd35d42bea9199f3f5b50444d91db9951f2e3e8d7a4e6a`  
		Last Modified: Thu, 30 Nov 2017 00:40:11 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:b0d2d66e5d49343918b8be1c5716ef88bec528ae572e901b11b90d7d90acce16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:67e6f418e73fa15090bb3a1b20a5fe4a89359cbbd56cbcdf3b11eb5537daa2e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122280648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cec300ef8f38199bb87fa8340dce1e4fa4b7904ca7cad231763899ee4beec02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:35:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 30 Nov 2017 00:36:51 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:36:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:36:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:36:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 30 Nov 2017 00:36:52 GMT
STOPSIGNAL [SIGTERM]
# Thu, 30 Nov 2017 00:36:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d50fee2b70bd5b33c79d3959f616078dbbc0195077395f2c12bd5584037661`  
		Last Modified: Thu, 30 Nov 2017 00:39:45 GMT  
		Size: 48.9 MB (48853487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb9d6bec010e6de0c01a1865031fe791095510921182e24258ccbd26a309be7`  
		Last Modified: Thu, 30 Nov 2017 00:39:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:b0d2d66e5d49343918b8be1c5716ef88bec528ae572e901b11b90d7d90acce16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:67e6f418e73fa15090bb3a1b20a5fe4a89359cbbd56cbcdf3b11eb5537daa2e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122280648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cec300ef8f38199bb87fa8340dce1e4fa4b7904ca7cad231763899ee4beec02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:35:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 30 Nov 2017 00:36:51 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:36:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:36:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:36:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 30 Nov 2017 00:36:52 GMT
STOPSIGNAL [SIGTERM]
# Thu, 30 Nov 2017 00:36:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d50fee2b70bd5b33c79d3959f616078dbbc0195077395f2c12bd5584037661`  
		Last Modified: Thu, 30 Nov 2017 00:39:45 GMT  
		Size: 48.9 MB (48853487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb9d6bec010e6de0c01a1865031fe791095510921182e24258ccbd26a309be7`  
		Last Modified: Thu, 30 Nov 2017 00:39:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:556da68f553341236ed711e83d20f21aa0cbe41e495785e86ac3468203cbfb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:33a78ca4a442d4c28a6da26c76a7d5ae9e5f8985eb8c8a28ea0d05128c33a938
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21aafccc74218fc06da049124ad32e10ffa6fa85644cd8c84a167a1e4445d8a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:02:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 01 Dec 2017 21:02:18 GMT
ENV KONG_VERSION=0.11.2
# Fri, 01 Dec 2017 21:02:18 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 01 Dec 2017 21:02:31 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Dec 2017 21:02:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 01 Dec 2017 21:02:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:02:32 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 01 Dec 2017 21:02:32 GMT
STOPSIGNAL [SIGTERM]
# Fri, 01 Dec 2017 21:02:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5c5d7f3af3113ac3f5daeed2c422aad315e9939c4138c4c335f8daa4c2f8ad`  
		Last Modified: Fri, 01 Dec 2017 21:02:50 GMT  
		Size: 28.0 MB (28040526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9f7a912cd25e314472e43dfb0c6cac02caa761d6ed914138bd5144bce5a392`  
		Last Modified: Fri, 01 Dec 2017 21:02:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:556da68f553341236ed711e83d20f21aa0cbe41e495785e86ac3468203cbfb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:33a78ca4a442d4c28a6da26c76a7d5ae9e5f8985eb8c8a28ea0d05128c33a938
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21aafccc74218fc06da049124ad32e10ffa6fa85644cd8c84a167a1e4445d8a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:02:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 01 Dec 2017 21:02:18 GMT
ENV KONG_VERSION=0.11.2
# Fri, 01 Dec 2017 21:02:18 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 01 Dec 2017 21:02:31 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Dec 2017 21:02:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 01 Dec 2017 21:02:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:02:32 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 01 Dec 2017 21:02:32 GMT
STOPSIGNAL [SIGTERM]
# Fri, 01 Dec 2017 21:02:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5c5d7f3af3113ac3f5daeed2c422aad315e9939c4138c4c335f8daa4c2f8ad`  
		Last Modified: Fri, 01 Dec 2017 21:02:50 GMT  
		Size: 28.0 MB (28040526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9f7a912cd25e314472e43dfb0c6cac02caa761d6ed914138bd5144bce5a392`  
		Last Modified: Fri, 01 Dec 2017 21:02:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.0rc2`

**does not exist** (yet?)

## `kong:0.12.0rc2-alpine`

**does not exist** (yet?)

## `kong:0.9`

```console
$ docker pull kong@sha256:011d342dfeb13d6732ee3aead3a0d858ec920354719586b4cc0793083acac131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

```console
$ docker pull kong@sha256:081503354d83a35d90de8f925ef47dd44d0c7e1c8492f6a45d6266b3f54bd880
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16420b6aa853a4c7733ba918f3f3d12fa69ea985d61dfc58914b591d66a36f8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:38:20 GMT
ENV KONG_VERSION=0.9.9
# Thu, 30 Nov 2017 00:39:20 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:39:21 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 30 Nov 2017 00:39:22 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:39:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:39:22 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 30 Nov 2017 00:39:22 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9f74ef7c8487770e2d58e911d65ef9c59761d190df466acabe80a2bbc53e55`  
		Last Modified: Thu, 30 Nov 2017 00:40:46 GMT  
		Size: 52.8 MB (52849794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3bf815b07f4aa0988db6f627a968fa03e1546c4cf81bdd846d70c49754826a`  
		Last Modified: Thu, 30 Nov 2017 00:40:39 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4a9be009c6e80143fee12132ca51454784d6d3b77fab9b72caa0e36c3b5bd6`  
		Last Modified: Thu, 30 Nov 2017 00:40:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:011d342dfeb13d6732ee3aead3a0d858ec920354719586b4cc0793083acac131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

```console
$ docker pull kong@sha256:081503354d83a35d90de8f925ef47dd44d0c7e1c8492f6a45d6266b3f54bd880
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16420b6aa853a4c7733ba918f3f3d12fa69ea985d61dfc58914b591d66a36f8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:38:20 GMT
ENV KONG_VERSION=0.9.9
# Thu, 30 Nov 2017 00:39:20 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:39:21 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 30 Nov 2017 00:39:22 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:39:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:39:22 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 30 Nov 2017 00:39:22 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9f74ef7c8487770e2d58e911d65ef9c59761d190df466acabe80a2bbc53e55`  
		Last Modified: Thu, 30 Nov 2017 00:40:46 GMT  
		Size: 52.8 MB (52849794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3bf815b07f4aa0988db6f627a968fa03e1546c4cf81bdd846d70c49754826a`  
		Last Modified: Thu, 30 Nov 2017 00:40:39 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4a9be009c6e80143fee12132ca51454784d6d3b77fab9b72caa0e36c3b5bd6`  
		Last Modified: Thu, 30 Nov 2017 00:40:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:b0d2d66e5d49343918b8be1c5716ef88bec528ae572e901b11b90d7d90acce16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:67e6f418e73fa15090bb3a1b20a5fe4a89359cbbd56cbcdf3b11eb5537daa2e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122280648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cec300ef8f38199bb87fa8340dce1e4fa4b7904ca7cad231763899ee4beec02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 30 Nov 2017 00:13:33 GMT
ADD file:7441d818786942af845a9a1ecdd284f3d9ff7a63909dd076302cebb4d83df781 in / 
# Thu, 30 Nov 2017 00:13:33 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20171128
# Thu, 30 Nov 2017 00:13:33 GMT
CMD ["/bin/bash"]
# Thu, 30 Nov 2017 00:35:42 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 30 Nov 2017 00:35:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 30 Nov 2017 00:36:51 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 30 Nov 2017 00:36:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 30 Nov 2017 00:36:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:36:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 30 Nov 2017 00:36:52 GMT
STOPSIGNAL [SIGTERM]
# Thu, 30 Nov 2017 00:36:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:85432449fd0fabb6bef4772246d9b7948723275a4c7e4dee18728f28d79f1c2c`  
		Last Modified: Thu, 30 Nov 2017 00:19:24 GMT  
		Size: 73.4 MB (73426838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d50fee2b70bd5b33c79d3959f616078dbbc0195077395f2c12bd5584037661`  
		Last Modified: Thu, 30 Nov 2017 00:39:45 GMT  
		Size: 48.9 MB (48853487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb9d6bec010e6de0c01a1865031fe791095510921182e24258ccbd26a309be7`  
		Last Modified: Thu, 30 Nov 2017 00:39:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
