<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.11.0rc2`](#kong0110rc2)
-	[`kong:0.10`](#kong010)
-	[`kong:0.10.3`](#kong0103)
-	[`kong:latest`](#konglatest)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)

## `kong:0.11.0rc2`

```console
$ docker pull kong@sha256:2ba097686eef12d3896d73f0b7247194f9272bf34266dfc33cc351899e405fc7
```

-	Platforms:
	-	linux; amd64

### `kong:0.11.0rc2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116551270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78781f90bf76f65f77f8abe8bde5dbc24215f448cb4dadeda67265b99c467722`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:03:01 GMT
ENV KONG_VERSION=0.11.0rc2
# Tue, 01 Aug 2017 21:03:30 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:03:33 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:03:34 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:03:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:03:36 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:03:38 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bca304760a27ec9d043c7e42c66a1053d3bb296e485438dc4b4098f3e31984`  
		Last Modified: Tue, 01 Aug 2017 21:04:52 GMT  
		Size: 46.0 MB (46044054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8461f852456ec01fb219bba3116d3c309c4c70817869d755c09ad53207e67d6`  
		Last Modified: Tue, 01 Aug 2017 21:04:45 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824b2cb19c6a322ab23ba2b9e99f7d753dfbeee3788a46011ff870561c7953cf`  
		Last Modified: Tue, 01 Aug 2017 21:04:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10`

```console
$ docker pull kong@sha256:491498a93a64961febc339e83e4d13e4d0683103256a78f562834b04d33ef2c8
```

-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123532778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d19e4998f9b4723d8dc661b67478c37cb13b41b6ebadedab8d76c90e85b7a71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:03:39 GMT
ENV KONG_VERSION=0.10.3
# Tue, 01 Aug 2017 21:04:01 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:04:05 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:04:06 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:04:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:04:08 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:04:09 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a35f5ee7ea4aecdd3150ece3932a38e862a1154710b883c1365e7a460c4d7aa`  
		Last Modified: Tue, 01 Aug 2017 21:05:06 GMT  
		Size: 53.0 MB (53025557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c63062190065022e70e579aff3cb4a52bb6c4e18963b8247899d68b12add10a`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 25.5 KB (25545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff067c12777ac98ecd0a111f28ddf130a870d95913fd08192228dab0b754dff0`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.3`

```console
$ docker pull kong@sha256:491498a93a64961febc339e83e4d13e4d0683103256a78f562834b04d33ef2c8
```

-	Platforms:
	-	linux; amd64

### `kong:0.10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123532778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d19e4998f9b4723d8dc661b67478c37cb13b41b6ebadedab8d76c90e85b7a71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:03:39 GMT
ENV KONG_VERSION=0.10.3
# Tue, 01 Aug 2017 21:04:01 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:04:05 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:04:06 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:04:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:04:08 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:04:09 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a35f5ee7ea4aecdd3150ece3932a38e862a1154710b883c1365e7a460c4d7aa`  
		Last Modified: Tue, 01 Aug 2017 21:05:06 GMT  
		Size: 53.0 MB (53025557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c63062190065022e70e579aff3cb4a52bb6c4e18963b8247899d68b12add10a`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 25.5 KB (25545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff067c12777ac98ecd0a111f28ddf130a870d95913fd08192228dab0b754dff0`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:491498a93a64961febc339e83e4d13e4d0683103256a78f562834b04d33ef2c8
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123532778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d19e4998f9b4723d8dc661b67478c37cb13b41b6ebadedab8d76c90e85b7a71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:03:39 GMT
ENV KONG_VERSION=0.10.3
# Tue, 01 Aug 2017 21:04:01 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:04:05 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:04:06 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:04:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:04:08 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:04:09 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a35f5ee7ea4aecdd3150ece3932a38e862a1154710b883c1365e7a460c4d7aa`  
		Last Modified: Tue, 01 Aug 2017 21:05:06 GMT  
		Size: 53.0 MB (53025557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c63062190065022e70e579aff3cb4a52bb6c4e18963b8247899d68b12add10a`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 25.5 KB (25545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff067c12777ac98ecd0a111f28ddf130a870d95913fd08192228dab0b754dff0`  
		Last Modified: Tue, 01 Aug 2017 21:04:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:85c1e4e74311beb8a6bccd72705a4c006cf96f9477be0b07099a19ea3d157b30
```

-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123237096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48647eb7aa1891f7b6dc3553ddc269952236b20e71bd0ad823751d4edf77f40c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:04:10 GMT
ENV KONG_VERSION=0.9.9
# Tue, 01 Aug 2017 21:04:34 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:04:37 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:04:38 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:04:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:04:40 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:04:41 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02655748bf7a9ab71757f03a22ffc059f20440e36ecfc7e741e6287a90850848`  
		Last Modified: Tue, 01 Aug 2017 21:05:28 GMT  
		Size: 52.7 MB (52729879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a502bb2a6729913b0775dc2308cec55e0f0ed1648de8a960b13f3eb95f96d810`  
		Last Modified: Tue, 01 Aug 2017 21:05:19 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb38b388903d4471d44b7f0ae126f8925d39b2f2ae6fb397067f87f4e988d9a9`  
		Last Modified: Tue, 01 Aug 2017 21:05:20 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:85c1e4e74311beb8a6bccd72705a4c006cf96f9477be0b07099a19ea3d157b30
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123237096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48647eb7aa1891f7b6dc3553ddc269952236b20e71bd0ad823751d4edf77f40c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Wed, 05 Jul 2017 21:04:49 GMT
ADD file:23c65acc4aae2afa0b6168b57448d06500f4b938ae785636eb97907a35f730a6 in / 
# Wed, 05 Jul 2017 21:04:50 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170705
# Wed, 05 Jul 2017 21:04:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Aug 2017 21:03:00 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 01 Aug 2017 21:04:10 GMT
ENV KONG_VERSION=0.9.9
# Tue, 01 Aug 2017 21:04:34 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 01 Aug 2017 21:04:37 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 01 Aug 2017 21:04:38 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 01 Aug 2017 21:04:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Aug 2017 21:04:40 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 01 Aug 2017 21:04:41 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:7b6bb4652a1be64d39920f7d8c12c5f0bd8abfc10820177109e73817357c07e3`  
		Last Modified: Wed, 05 Jul 2017 21:05:26 GMT  
		Size: 70.5 MB (70481457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02655748bf7a9ab71757f03a22ffc059f20440e36ecfc7e741e6287a90850848`  
		Last Modified: Tue, 01 Aug 2017 21:05:28 GMT  
		Size: 52.7 MB (52729879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a502bb2a6729913b0775dc2308cec55e0f0ed1648de8a960b13f3eb95f96d810`  
		Last Modified: Tue, 01 Aug 2017 21:05:19 GMT  
		Size: 25.5 KB (25541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb38b388903d4471d44b7f0ae126f8925d39b2f2ae6fb397067f87f4e988d9a9`  
		Last Modified: Tue, 01 Aug 2017 21:05:20 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
