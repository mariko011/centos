<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.1`](#kong0101)
-	[`kong:latest`](#konglatest)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)

## `kong:0.10`

```console
$ docker pull kong@sha256:fdb0efdb09b54230aa886b71f14534a2bbbad961f3782240a4ef3a61088febd1
```

-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122270286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109e535ab80c48f62ceb0f06dee707a9f22e054401e3c962527ba9d24cb6e8f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 06 Apr 2017 20:14:34 GMT
ADD file:807143da05d70138e54c4a25c6c3ea64ad1096982333ef3b94a366580be40f52 in / 
# Thu, 06 Apr 2017 20:14:37 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170406
# Thu, 06 Apr 2017 20:14:38 GMT
CMD ["/bin/bash"]
# Tue, 02 May 2017 17:53:59 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 02 May 2017 17:54:01 GMT
ENV KONG_VERSION=0.10.2
# Tue, 02 May 2017 17:54:36 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 02 May 2017 17:54:39 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 02 May 2017 17:54:40 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 02 May 2017 17:54:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:54:43 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 02 May 2017 17:54:45 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:93857f76ae30d903bbdad13fbf7fad95ce1c0b52b7d5644651e01c6c7a906312`  
		Last Modified: Thu, 06 Apr 2017 20:15:34 GMT  
		Size: 70.5 MB (70455804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1253400d5e2a05b2431a08151353235c9bc2e8c6c7a62a30a61a4641866d44c`  
		Last Modified: Tue, 02 May 2017 17:55:49 GMT  
		Size: 51.8 MB (51789613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a550eb4be9518cd8ed131ce4e9936853bc4fc10d6d8b5939d96bd15c60a329d1`  
		Last Modified: Tue, 02 May 2017 17:55:36 GMT  
		Size: 24.6 KB (24648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be12e183f8264035acad05b5faf3f2be7bf65c5bee3599f7f566131906e6067`  
		Last Modified: Tue, 02 May 2017 17:55:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.1`

```console
$ docker pull kong@sha256:95936259064c7a84530de12da749effb564d64679d671e75ca6f7cee05b0de7f
```

-	Platforms:
	-	linux; amd64

### `kong:0.10.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122235668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b15e801d8438313b3fc377e18b7bacee6f49d3748303ace53ea92257529afa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Wed, 15 Mar 2017 21:49:49 GMT
ADD file:29f66b8b4bafd0f00567ba6acbda5157ef1e874fa0b80f59ef09f8957698eb33 in / 
# Wed, 15 Mar 2017 21:49:51 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170315
# Wed, 15 Mar 2017 21:49:52 GMT
CMD ["/bin/bash"]
# Wed, 15 Mar 2017 22:04:34 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 28 Mar 2017 16:42:49 GMT
ENV KONG_VERSION=0.10.1
# Tue, 28 Mar 2017 16:43:17 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 28 Mar 2017 16:43:21 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 28 Mar 2017 16:43:22 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 28 Mar 2017 16:43:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Mar 2017 16:43:24 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 28 Mar 2017 16:43:25 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:785fe1d06b2d42874d3e18fb0747ad8c9ed83d04e7641279a4d5ae353f27eff9`  
		Last Modified: Wed, 15 Mar 2017 21:50:34 GMT  
		Size: 70.5 MB (70456515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be97ade7ea018e71b537a705c97e48ea382081449791bf936cc54ab0955bbac`  
		Last Modified: Tue, 28 Mar 2017 16:43:43 GMT  
		Size: 51.8 MB (51754288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c40ec8d2c59f8a360facbe02cdbf12897821a2c9456b0b174d5024de6b6b1cd`  
		Last Modified: Tue, 28 Mar 2017 16:43:30 GMT  
		Size: 24.6 KB (24644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982e32dfc3639223a2bf15f557a5ece795190bdab19084af55eeef21e1972340`  
		Last Modified: Tue, 28 Mar 2017 16:43:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:95936259064c7a84530de12da749effb564d64679d671e75ca6f7cee05b0de7f
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122235668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b15e801d8438313b3fc377e18b7bacee6f49d3748303ace53ea92257529afa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Wed, 15 Mar 2017 21:49:49 GMT
ADD file:29f66b8b4bafd0f00567ba6acbda5157ef1e874fa0b80f59ef09f8957698eb33 in / 
# Wed, 15 Mar 2017 21:49:51 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170315
# Wed, 15 Mar 2017 21:49:52 GMT
CMD ["/bin/bash"]
# Wed, 15 Mar 2017 22:04:34 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 28 Mar 2017 16:42:49 GMT
ENV KONG_VERSION=0.10.1
# Tue, 28 Mar 2017 16:43:17 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 28 Mar 2017 16:43:21 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 28 Mar 2017 16:43:22 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 28 Mar 2017 16:43:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Mar 2017 16:43:24 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 28 Mar 2017 16:43:25 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:785fe1d06b2d42874d3e18fb0747ad8c9ed83d04e7641279a4d5ae353f27eff9`  
		Last Modified: Wed, 15 Mar 2017 21:50:34 GMT  
		Size: 70.5 MB (70456515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be97ade7ea018e71b537a705c97e48ea382081449791bf936cc54ab0955bbac`  
		Last Modified: Tue, 28 Mar 2017 16:43:43 GMT  
		Size: 51.8 MB (51754288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c40ec8d2c59f8a360facbe02cdbf12897821a2c9456b0b174d5024de6b6b1cd`  
		Last Modified: Tue, 28 Mar 2017 16:43:30 GMT  
		Size: 24.6 KB (24644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982e32dfc3639223a2bf15f557a5ece795190bdab19084af55eeef21e1972340`  
		Last Modified: Tue, 28 Mar 2017 16:43:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:f55c8b1584bb275b37e362282eb6d1c4dd0d7c671923ea0624c1a72687c6c3b1
```

-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133016096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5210a3d4ba434081dbb027ed2cdb1c95900992c388cb975c4090a4b9f948885f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 06 Apr 2017 20:14:34 GMT
ADD file:807143da05d70138e54c4a25c6c3ea64ad1096982333ef3b94a366580be40f52 in / 
# Thu, 06 Apr 2017 20:14:37 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170406
# Thu, 06 Apr 2017 20:14:38 GMT
CMD ["/bin/bash"]
# Tue, 02 May 2017 17:53:59 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 02 May 2017 17:54:46 GMT
ENV KONG_VERSION=0.9.9
# Tue, 02 May 2017 17:55:21 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 02 May 2017 17:55:25 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 02 May 2017 17:55:27 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 02 May 2017 17:55:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:55:30 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 02 May 2017 17:55:31 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:93857f76ae30d903bbdad13fbf7fad95ce1c0b52b7d5644651e01c6c7a906312`  
		Last Modified: Thu, 06 Apr 2017 20:15:34 GMT  
		Size: 70.5 MB (70455804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e00683a3dd7c0a6a306717edf69ed643d36d8ebe25a9e398952039a349242e`  
		Last Modified: Tue, 02 May 2017 17:56:19 GMT  
		Size: 62.5 MB (62535424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6a55a6ed5c376e8dd3626bc7616ae20fb835acdfd1e0aa9a1394fc6e0adef`  
		Last Modified: Tue, 02 May 2017 17:56:00 GMT  
		Size: 24.6 KB (24647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca92c7d61231aad4bd1da1410388a61d70cfdd1f231128a38ce84e7383de36`  
		Last Modified: Tue, 02 May 2017 17:56:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:f55c8b1584bb275b37e362282eb6d1c4dd0d7c671923ea0624c1a72687c6c3b1
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133016096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5210a3d4ba434081dbb027ed2cdb1c95900992c388cb975c4090a4b9f948885f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 06 Apr 2017 20:14:34 GMT
ADD file:807143da05d70138e54c4a25c6c3ea64ad1096982333ef3b94a366580be40f52 in / 
# Thu, 06 Apr 2017 20:14:37 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170406
# Thu, 06 Apr 2017 20:14:38 GMT
CMD ["/bin/bash"]
# Tue, 02 May 2017 17:53:59 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 02 May 2017 17:54:46 GMT
ENV KONG_VERSION=0.9.9
# Tue, 02 May 2017 17:55:21 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 02 May 2017 17:55:25 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 02 May 2017 17:55:27 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 02 May 2017 17:55:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:55:30 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 02 May 2017 17:55:31 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:93857f76ae30d903bbdad13fbf7fad95ce1c0b52b7d5644651e01c6c7a906312`  
		Last Modified: Thu, 06 Apr 2017 20:15:34 GMT  
		Size: 70.5 MB (70455804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e00683a3dd7c0a6a306717edf69ed643d36d8ebe25a9e398952039a349242e`  
		Last Modified: Tue, 02 May 2017 17:56:19 GMT  
		Size: 62.5 MB (62535424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6a55a6ed5c376e8dd3626bc7616ae20fb835acdfd1e0aa9a1394fc6e0adef`  
		Last Modified: Tue, 02 May 2017 17:56:00 GMT  
		Size: 24.6 KB (24647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca92c7d61231aad4bd1da1410388a61d70cfdd1f231128a38ce84e7383de36`  
		Last Modified: Tue, 02 May 2017 17:56:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
