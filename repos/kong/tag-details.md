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
$ docker pull kong@sha256:03c55898d430519df22298130835883c2469e31578032e814a403e70aa8c28c1
```

-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e40a9904566491b91ae144394125d5bbfcfd246d878774bc5d9a9863d3be1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 22 Aug 2017 22:42:50 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 22 Aug 2017 22:42:50 GMT
ENV KONG_VERSION=0.11.0
# Tue, 22 Aug 2017 22:42:51 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Tue, 22 Aug 2017 22:43:01 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Tue, 22 Aug 2017 22:43:05 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 22 Aug 2017 22:43:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 22:43:06 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 22 Aug 2017 22:43:06 GMT
STOPSIGNAL [SIGTERM]
# Tue, 22 Aug 2017 22:43:06 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258db9a20c8e97b696e109cdba83637f999127c18da821c87d512f9fd54a44e8`  
		Last Modified: Tue, 22 Aug 2017 22:43:21 GMT  
		Size: 27.7 MB (27652888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbd31e759470832accd686cbfee143f28e11e568c83a7b3be8672f79b36b71e`  
		Last Modified: Tue, 22 Aug 2017 22:43:14 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0-alpine`

```console
$ docker pull kong@sha256:03c55898d430519df22298130835883c2469e31578032e814a403e70aa8c28c1
```

-	Platforms:
	-	linux; amd64

### `kong:0.11.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29643613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e40a9904566491b91ae144394125d5bbfcfd246d878774bc5d9a9863d3be1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 22 Aug 2017 22:42:50 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 22 Aug 2017 22:42:50 GMT
ENV KONG_VERSION=0.11.0
# Tue, 22 Aug 2017 22:42:51 GMT
ENV KONG_SHA256=34cfd44f61a4da5d39ad7b59bad7b4790451065ff8c8c3d000b6258ab6961949
# Tue, 22 Aug 2017 22:43:01 GMT
RUN apk update 	&& apk add --virtual .build-deps wget tar ca-certificates 	&& apk add libgcc openssl pcre perl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& apk del .build-deps 	&& rm -rf /var/cache/apk/*
# Tue, 22 Aug 2017 22:43:05 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 22 Aug 2017 22:43:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 22:43:06 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 22 Aug 2017 22:43:06 GMT
STOPSIGNAL [SIGTERM]
# Tue, 22 Aug 2017 22:43:06 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258db9a20c8e97b696e109cdba83637f999127c18da821c87d512f9fd54a44e8`  
		Last Modified: Tue, 22 Aug 2017 22:43:21 GMT  
		Size: 27.7 MB (27652888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbd31e759470832accd686cbfee143f28e11e568c83a7b3be8672f79b36b71e`  
		Last Modified: Tue, 22 Aug 2017 22:43:14 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11`

```console
$ docker pull kong@sha256:2325239b8c5e1fa2deb06af1cf46db2bad63c650c3d1d2ed350b2b18141d9748
```

-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121021282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ba9380a5b7a9640181ff36290fad6c11f861c40cc904872ba40b5cbf2e1d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 17 Aug 2017 00:10:28 GMT
ENV KONG_VERSION=0.11.0
# Thu, 17 Aug 2017 00:10:48 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 17 Aug 2017 00:10:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 17 Aug 2017 00:10:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Aug 2017 00:10:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 17 Aug 2017 00:10:53 GMT
STOPSIGNAL [SIGTERM]
# Thu, 17 Aug 2017 00:10:55 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74991783116cedb2123c8b801acd20c732c560f28a3d224009f69184163bdd5`  
		Last Modified: Thu, 17 Aug 2017 00:11:06 GMT  
		Size: 48.8 MB (48773462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b74c7f374e9fc27ef2f0b46ef721ea39b1ea2b5afa13493b381d37e92bcc5c6`  
		Last Modified: Thu, 17 Aug 2017 00:10:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.0`

```console
$ docker pull kong@sha256:2325239b8c5e1fa2deb06af1cf46db2bad63c650c3d1d2ed350b2b18141d9748
```

-	Platforms:
	-	linux; amd64

### `kong:0.11.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121021282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ba9380a5b7a9640181ff36290fad6c11f861c40cc904872ba40b5cbf2e1d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 17 Aug 2017 00:10:28 GMT
ENV KONG_VERSION=0.11.0
# Thu, 17 Aug 2017 00:10:48 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 17 Aug 2017 00:10:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 17 Aug 2017 00:10:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Aug 2017 00:10:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 17 Aug 2017 00:10:53 GMT
STOPSIGNAL [SIGTERM]
# Thu, 17 Aug 2017 00:10:55 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74991783116cedb2123c8b801acd20c732c560f28a3d224009f69184163bdd5`  
		Last Modified: Thu, 17 Aug 2017 00:11:06 GMT  
		Size: 48.8 MB (48773462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b74c7f374e9fc27ef2f0b46ef721ea39b1ea2b5afa13493b381d37e92bcc5c6`  
		Last Modified: Thu, 17 Aug 2017 00:10:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:2325239b8c5e1fa2deb06af1cf46db2bad63c650c3d1d2ed350b2b18141d9748
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121021282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ba9380a5b7a9640181ff36290fad6c11f861c40cc904872ba40b5cbf2e1d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 17 Aug 2017 00:10:28 GMT
ENV KONG_VERSION=0.11.0
# Thu, 17 Aug 2017 00:10:48 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 17 Aug 2017 00:10:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 17 Aug 2017 00:10:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Aug 2017 00:10:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 17 Aug 2017 00:10:53 GMT
STOPSIGNAL [SIGTERM]
# Thu, 17 Aug 2017 00:10:55 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74991783116cedb2123c8b801acd20c732c560f28a3d224009f69184163bdd5`  
		Last Modified: Thu, 17 Aug 2017 00:11:06 GMT  
		Size: 48.8 MB (48773462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b74c7f374e9fc27ef2f0b46ef721ea39b1ea2b5afa13493b381d37e92bcc5c6`  
		Last Modified: Thu, 17 Aug 2017 00:10:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10`

```console
$ docker pull kong@sha256:cc5383c3392535f11451e3029997b03a96c6d628057bf2070a2b5c4816864697
```

-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125292166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41444ec648ced13a7bcd1b70d2311e4793d2317b4eb4e356b65bde08397ada`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:05 GMT
ENV KONG_VERSION=0.10.3
# Thu, 03 Aug 2017 22:04:26 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:29 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:30 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:32 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:33 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dca42a7ca9993260e681e821b74ca791e70d05da31f19e24a393fbfe420b4f`  
		Last Modified: Thu, 03 Aug 2017 22:05:35 GMT  
		Size: 53.0 MB (53018910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec773c42db646fd00b107652233da118b1889a906099a7d41af756bc724a3d`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b7a2e0f6d3d7328f8ba42c4ea09d0620c77086f14aeb1121ed960d5d7dda7`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.3`

```console
$ docker pull kong@sha256:cc5383c3392535f11451e3029997b03a96c6d628057bf2070a2b5c4816864697
```

-	Platforms:
	-	linux; amd64

### `kong:0.10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125292166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41444ec648ced13a7bcd1b70d2311e4793d2317b4eb4e356b65bde08397ada`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:05 GMT
ENV KONG_VERSION=0.10.3
# Thu, 03 Aug 2017 22:04:26 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:29 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:30 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:32 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:33 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dca42a7ca9993260e681e821b74ca791e70d05da31f19e24a393fbfe420b4f`  
		Last Modified: Thu, 03 Aug 2017 22:05:35 GMT  
		Size: 53.0 MB (53018910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec773c42db646fd00b107652233da118b1889a906099a7d41af756bc724a3d`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b7a2e0f6d3d7328f8ba42c4ea09d0620c77086f14aeb1121ed960d5d7dda7`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:5a703da1a5417390f9347802fa85421df3bdf17049b830e1bca269bb25aac6ec
```

-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125001305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472a653241d5ba62eb85a7b38e9295f4d1ce0e07db5746ff562d76b17b507c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:34 GMT
ENV KONG_VERSION=0.9.9
# Thu, 03 Aug 2017 22:05:00 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:05:03 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:05:04 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:05:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:05:06 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:05:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581ad1f77847199eab2f9414ff7ecab3009d0ad1df0d4a6eedc220089257c84`  
		Last Modified: Thu, 03 Aug 2017 22:05:57 GMT  
		Size: 52.7 MB (52728053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d01e0200b7de8c95a8abccc1a29f0c356c3b9c976ea8ca891677e7d41eea32`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91c2aa92bb632274805143a97329c97e67cde708cda7e48488958d519ff6daf`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:5a703da1a5417390f9347802fa85421df3bdf17049b830e1bca269bb25aac6ec
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125001305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472a653241d5ba62eb85a7b38e9295f4d1ce0e07db5746ff562d76b17b507c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:34 GMT
ENV KONG_VERSION=0.9.9
# Thu, 03 Aug 2017 22:05:00 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:05:03 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:05:04 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:05:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:05:06 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:05:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581ad1f77847199eab2f9414ff7ecab3009d0ad1df0d4a6eedc220089257c84`  
		Last Modified: Thu, 03 Aug 2017 22:05:57 GMT  
		Size: 52.7 MB (52728053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d01e0200b7de8c95a8abccc1a29f0c356c3b9c976ea8ca891677e7d41eea32`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91c2aa92bb632274805143a97329c97e67cde708cda7e48488958d519ff6daf`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
