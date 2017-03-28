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
