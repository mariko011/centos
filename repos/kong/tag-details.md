<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.9`](#kong09)
-	[`kong:0.9.3`](#kong093)
-	[`kong:latest`](#konglatest)

## `kong:0.9`

```console
$ docker pull kong@sha256:edbab1c4043384c5dff3fa26c588562ede7d706d571d05239cc73bb1f999f7b9
```

-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133341694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e3273d792f07aba008b040a91f621880b17201be513f89c98d29aaa6c3a1b9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Tue, 06 Sep 2016 21:10:17 GMT
ADD file:e336b45186086f7d9d9b8e8be3d6c027bc9c14dbfdde2bb056793ee458bd1a57 in / 
# Tue, 06 Sep 2016 21:10:19 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20160906
# Tue, 06 Sep 2016 21:10:20 GMT
CMD ["/bin/bash"]
# Tue, 06 Sep 2016 21:17:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 10 Oct 2016 16:34:20 GMT
ENV KONG_VERSION=0.9.3
# Mon, 10 Oct 2016 16:34:52 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 10 Oct 2016 16:34:55 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Mon, 10 Oct 2016 16:34:57 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Mon, 10 Oct 2016 16:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Oct 2016 16:34:59 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Mon, 10 Oct 2016 16:35:00 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:8d30e94188e7f13642d975e70c484e48c33867f3ede3277df1145803fa996ac1`  
		Last Modified: Tue, 06 Sep 2016 21:10:57 GMT  
		Size: 70.6 MB (70591526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15afaab85c0db89b7550fe7b7a2727b25281f75a2387336e7d290bde42418719`  
		Last Modified: Mon, 10 Oct 2016 16:35:22 GMT  
		Size: 62.7 MB (62725282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a90cb5f69f3a64703517f3849f5797550a310a3cb2cb0ae9f4c75a80b4f7c8`  
		Last Modified: Mon, 10 Oct 2016 16:35:04 GMT  
		Size: 24.6 KB (24647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bf838323ae3afe925ed947ea5a5edefc8fe5a5817d67a5e84ebac9c05e617`  
		Last Modified: Mon, 10 Oct 2016 16:35:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.3`

```console
$ docker pull kong@sha256:edbab1c4043384c5dff3fa26c588562ede7d706d571d05239cc73bb1f999f7b9
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133341694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e3273d792f07aba008b040a91f621880b17201be513f89c98d29aaa6c3a1b9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Tue, 06 Sep 2016 21:10:17 GMT
ADD file:e336b45186086f7d9d9b8e8be3d6c027bc9c14dbfdde2bb056793ee458bd1a57 in / 
# Tue, 06 Sep 2016 21:10:19 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20160906
# Tue, 06 Sep 2016 21:10:20 GMT
CMD ["/bin/bash"]
# Tue, 06 Sep 2016 21:17:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 10 Oct 2016 16:34:20 GMT
ENV KONG_VERSION=0.9.3
# Mon, 10 Oct 2016 16:34:52 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 10 Oct 2016 16:34:55 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Mon, 10 Oct 2016 16:34:57 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Mon, 10 Oct 2016 16:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Oct 2016 16:34:59 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Mon, 10 Oct 2016 16:35:00 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:8d30e94188e7f13642d975e70c484e48c33867f3ede3277df1145803fa996ac1`  
		Last Modified: Tue, 06 Sep 2016 21:10:57 GMT  
		Size: 70.6 MB (70591526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15afaab85c0db89b7550fe7b7a2727b25281f75a2387336e7d290bde42418719`  
		Last Modified: Mon, 10 Oct 2016 16:35:22 GMT  
		Size: 62.7 MB (62725282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a90cb5f69f3a64703517f3849f5797550a310a3cb2cb0ae9f4c75a80b4f7c8`  
		Last Modified: Mon, 10 Oct 2016 16:35:04 GMT  
		Size: 24.6 KB (24647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bf838323ae3afe925ed947ea5a5edefc8fe5a5817d67a5e84ebac9c05e617`  
		Last Modified: Mon, 10 Oct 2016 16:35:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:edbab1c4043384c5dff3fa26c588562ede7d706d571d05239cc73bb1f999f7b9
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133341694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e3273d792f07aba008b040a91f621880b17201be513f89c98d29aaa6c3a1b9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Tue, 06 Sep 2016 21:10:17 GMT
ADD file:e336b45186086f7d9d9b8e8be3d6c027bc9c14dbfdde2bb056793ee458bd1a57 in / 
# Tue, 06 Sep 2016 21:10:19 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20160906
# Tue, 06 Sep 2016 21:10:20 GMT
CMD ["/bin/bash"]
# Tue, 06 Sep 2016 21:17:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 10 Oct 2016 16:34:20 GMT
ENV KONG_VERSION=0.9.3
# Mon, 10 Oct 2016 16:34:52 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 10 Oct 2016 16:34:55 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Mon, 10 Oct 2016 16:34:57 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Mon, 10 Oct 2016 16:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Oct 2016 16:34:59 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Mon, 10 Oct 2016 16:35:00 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:8d30e94188e7f13642d975e70c484e48c33867f3ede3277df1145803fa996ac1`  
		Last Modified: Tue, 06 Sep 2016 21:10:57 GMT  
		Size: 70.6 MB (70591526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15afaab85c0db89b7550fe7b7a2727b25281f75a2387336e7d290bde42418719`  
		Last Modified: Mon, 10 Oct 2016 16:35:22 GMT  
		Size: 62.7 MB (62725282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a90cb5f69f3a64703517f3849f5797550a310a3cb2cb0ae9f4c75a80b4f7c8`  
		Last Modified: Mon, 10 Oct 2016 16:35:04 GMT  
		Size: 24.6 KB (24647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267bf838323ae3afe925ed947ea5a5edefc8fe5a5817d67a5e84ebac9c05e617`  
		Last Modified: Mon, 10 Oct 2016 16:35:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
