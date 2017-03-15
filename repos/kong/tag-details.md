<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.10`](#kong010)
-	[`kong:0.10.0`](#kong0100)
-	[`kong:latest`](#konglatest)

## `kong:0.10`

```console
$ docker pull kong@sha256:0c2a1811ae7de15b9cb73253ba1c4b8d09d67c6258ac1e9f1ac1f8f523ca2b9f
```

-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123189623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9672f5ad04cfd30d7c47bf5931775f4556fcabff7c00373a3216f56b17b68a9`
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
# Wed, 15 Mar 2017 22:04:35 GMT
ENV KONG_VERSION=0.10.0
# Wed, 15 Mar 2017 22:05:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 15 Mar 2017 22:05:08 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 15 Mar 2017 22:05:09 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 15 Mar 2017 22:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Mar 2017 22:05:11 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 15 Mar 2017 22:05:13 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:785fe1d06b2d42874d3e18fb0747ad8c9ed83d04e7641279a4d5ae353f27eff9`  
		Last Modified: Wed, 15 Mar 2017 21:50:34 GMT  
		Size: 70.5 MB (70456515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a978304d898a9f4caeaf20d917cf13d13f66c5dc2cc8c11ded16925c4542694`  
		Last Modified: Wed, 15 Mar 2017 22:05:32 GMT  
		Size: 52.7 MB (52708244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2bd2cacdf59d618e8ad46f0486a603c109e0e7df4b20275473665b1f632f21`  
		Last Modified: Wed, 15 Mar 2017 22:05:16 GMT  
		Size: 24.6 KB (24643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8b6450e682fa8cc2a42a5149fae3a1cc6a984e956fc9bc47cbb57df3b551f`  
		Last Modified: Wed, 15 Mar 2017 22:05:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.0`

```console
$ docker pull kong@sha256:0c2a1811ae7de15b9cb73253ba1c4b8d09d67c6258ac1e9f1ac1f8f523ca2b9f
```

-	Platforms:
	-	linux; amd64

### `kong:0.10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123189623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9672f5ad04cfd30d7c47bf5931775f4556fcabff7c00373a3216f56b17b68a9`
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
# Wed, 15 Mar 2017 22:04:35 GMT
ENV KONG_VERSION=0.10.0
# Wed, 15 Mar 2017 22:05:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 15 Mar 2017 22:05:08 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 15 Mar 2017 22:05:09 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 15 Mar 2017 22:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Mar 2017 22:05:11 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 15 Mar 2017 22:05:13 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:785fe1d06b2d42874d3e18fb0747ad8c9ed83d04e7641279a4d5ae353f27eff9`  
		Last Modified: Wed, 15 Mar 2017 21:50:34 GMT  
		Size: 70.5 MB (70456515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a978304d898a9f4caeaf20d917cf13d13f66c5dc2cc8c11ded16925c4542694`  
		Last Modified: Wed, 15 Mar 2017 22:05:32 GMT  
		Size: 52.7 MB (52708244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2bd2cacdf59d618e8ad46f0486a603c109e0e7df4b20275473665b1f632f21`  
		Last Modified: Wed, 15 Mar 2017 22:05:16 GMT  
		Size: 24.6 KB (24643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8b6450e682fa8cc2a42a5149fae3a1cc6a984e956fc9bc47cbb57df3b551f`  
		Last Modified: Wed, 15 Mar 2017 22:05:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:0c2a1811ae7de15b9cb73253ba1c4b8d09d67c6258ac1e9f1ac1f8f523ca2b9f
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123189623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9672f5ad04cfd30d7c47bf5931775f4556fcabff7c00373a3216f56b17b68a9`
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
# Wed, 15 Mar 2017 22:04:35 GMT
ENV KONG_VERSION=0.10.0
# Wed, 15 Mar 2017 22:05:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 15 Mar 2017 22:05:08 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 15 Mar 2017 22:05:09 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Wed, 15 Mar 2017 22:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Mar 2017 22:05:11 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 15 Mar 2017 22:05:13 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:785fe1d06b2d42874d3e18fb0747ad8c9ed83d04e7641279a4d5ae353f27eff9`  
		Last Modified: Wed, 15 Mar 2017 21:50:34 GMT  
		Size: 70.5 MB (70456515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a978304d898a9f4caeaf20d917cf13d13f66c5dc2cc8c11ded16925c4542694`  
		Last Modified: Wed, 15 Mar 2017 22:05:32 GMT  
		Size: 52.7 MB (52708244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2bd2cacdf59d618e8ad46f0486a603c109e0e7df4b20275473665b1f632f21`  
		Last Modified: Wed, 15 Mar 2017 22:05:16 GMT  
		Size: 24.6 KB (24643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8b6450e682fa8cc2a42a5149fae3a1cc6a984e956fc9bc47cbb57df3b551f`  
		Last Modified: Wed, 15 Mar 2017 22:05:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
