<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.9.0`](#kong090)
-	[`kong:latest`](#konglatest)

## `kong:0.9.0`

```console
$ docker pull kong@sha256:aaa71959e8ffcd9b80db15d9a620feb3d90147dfba466e3fae16b05a0ddb76b1
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133110066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90092413a12693b90a962bb82ac1a096c183c80aba924017207cd0ae9ad53657`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Tue, 30 Aug 2016 18:18:56 GMT
ADD file:44ef4e10b27d8c464ad675a8a514a382c8748bb17d1bd707df084f6315076149 in / 
# Tue, 30 Aug 2016 18:18:59 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20160729
# Tue, 30 Aug 2016 18:19:00 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 21:09:31 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 31 Aug 2016 21:09:32 GMT
ENV KONG_VERSION=0.9.0
# Wed, 31 Aug 2016 21:10:05 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 31 Aug 2016 21:10:10 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 31 Aug 2016 21:10:11 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:10:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:10:13 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 31 Aug 2016 21:10:14 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:b4fc80d8f477d0204e7c51b33358a7e747a37cba5184688b86fb224b1bc8f136`  
		Last Modified: Wed, 31 Aug 2016 21:10:44 GMT  
		Size: 70.6 MB (70583109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d62dc86b7a36d25a864c2c8515960b6d4fd1303e860654040f0353a486cabbf`  
		Last Modified: Wed, 31 Aug 2016 21:10:39 GMT  
		Size: 62.5 MB (62502073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954873b058dc2fdcd9932c63df62e8bebfc9b69498f7572235a25960e38792a`  
		Last Modified: Wed, 31 Aug 2016 21:10:20 GMT  
		Size: 24.6 KB (24645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0eaf38f552b82726effc9575970ec01279595c097f1ac457d009a52d3ddedca`  
		Last Modified: Wed, 31 Aug 2016 21:10:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:aaa71959e8ffcd9b80db15d9a620feb3d90147dfba466e3fae16b05a0ddb76b1
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133110066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90092413a12693b90a962bb82ac1a096c183c80aba924017207cd0ae9ad53657`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Tue, 30 Aug 2016 18:18:56 GMT
ADD file:44ef4e10b27d8c464ad675a8a514a382c8748bb17d1bd707df084f6315076149 in / 
# Tue, 30 Aug 2016 18:18:59 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20160729
# Tue, 30 Aug 2016 18:19:00 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 21:09:31 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 31 Aug 2016 21:09:32 GMT
ENV KONG_VERSION=0.9.0
# Wed, 31 Aug 2016 21:10:05 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 31 Aug 2016 21:10:10 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 31 Aug 2016 21:10:11 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:10:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:10:13 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 31 Aug 2016 21:10:14 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:b4fc80d8f477d0204e7c51b33358a7e747a37cba5184688b86fb224b1bc8f136`  
		Last Modified: Wed, 31 Aug 2016 21:10:44 GMT  
		Size: 70.6 MB (70583109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d62dc86b7a36d25a864c2c8515960b6d4fd1303e860654040f0353a486cabbf`  
		Last Modified: Wed, 31 Aug 2016 21:10:39 GMT  
		Size: 62.5 MB (62502073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954873b058dc2fdcd9932c63df62e8bebfc9b69498f7572235a25960e38792a`  
		Last Modified: Wed, 31 Aug 2016 21:10:20 GMT  
		Size: 24.6 KB (24645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0eaf38f552b82726effc9575970ec01279595c097f1ac457d009a52d3ddedca`  
		Last Modified: Wed, 31 Aug 2016 21:10:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
