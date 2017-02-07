## `kong:latest`

```console
$ docker pull kong@sha256:f3966509a0943eac245dade9c51d8011859e130a8853e041f5f6c46abbbd917d
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122811459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958a49da171a459ac423d86a0e4d38b35c09d7216de046960076003f47e70eee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Thu, 15 Dec 2016 18:21:21 GMT
ADD file:940c77b6724c00d4208cc72169a63951eaa605672bcc5902ab2013cbae107434 in / 
# Thu, 15 Dec 2016 18:21:23 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20161214
# Thu, 15 Dec 2016 18:21:23 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:24:28 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 07 Feb 2017 18:02:03 GMT
ENV KONG_VERSION=0.9.9
# Tue, 07 Feb 2017 18:02:27 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 07 Feb 2017 18:02:30 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Tue, 07 Feb 2017 18:02:31 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Tue, 07 Feb 2017 18:02:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Feb 2017 18:02:33 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Tue, 07 Feb 2017 18:02:35 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:45a2e645736c4c66ef34acce2407ded21f7a9b231199d3b92d6c9776df264729`  
		Last Modified: Thu, 15 Dec 2016 18:22:30 GMT  
		Size: 70.4 MB (70389679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6a62ea4c4d0f00a704cdf04ee62d83fbefb0de3b815e01574a14bb1f65992d`  
		Last Modified: Tue, 07 Feb 2017 18:02:52 GMT  
		Size: 52.4 MB (52396907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a926b0fe167f78fecee46a4001e431c7ee94512efbc3af79134f2efb9806d0`  
		Last Modified: Tue, 07 Feb 2017 18:02:39 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65d88a115140fd9c80b9dccc1012782be14026d6f46e778cafb923d7a7551fa`  
		Last Modified: Tue, 07 Feb 2017 18:02:39 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
