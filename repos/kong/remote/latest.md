## `kong:latest`

```console
$ docker pull kong@sha256:ff83e7de28408596f2e547b33dd764e3139a574775d2648384ddb8ff11705db4
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121912421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c72738f4d831af4149a7c2ae97b992cd221ca2a3b5116cb42b5b949510ebf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Tue, 30 Aug 2016 18:18:45 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Wed, 02 Nov 2016 19:52:05 GMT
ADD file:54df3580ac9fb66389b09230a74115a49ace2d193603bce0b5786dcb2957eb52 in / 
# Wed, 02 Nov 2016 19:52:08 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20161102
# Wed, 02 Nov 2016 19:52:09 GMT
CMD ["/bin/bash"]
# Wed, 02 Nov 2016 20:11:05 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 02 Nov 2016 20:11:06 GMT
ENV KONG_VERSION=0.9.3
# Wed, 02 Nov 2016 20:11:41 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 02 Nov 2016 20:11:45 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Wed, 02 Nov 2016 20:11:46 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Wed, 02 Nov 2016 20:11:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Nov 2016 20:11:48 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Wed, 02 Nov 2016 20:11:49 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:08d48e6f1cff259389732d35307bb877215fa28867cdaff50c1dbd6e0b993c1f`  
		Last Modified: Wed, 02 Nov 2016 19:52:49 GMT  
		Size: 70.5 MB (70481699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9074b576dc1f01cbce1e8d608a95b6e871fc8aaa60de2d80f3d53845592c8`  
		Last Modified: Wed, 02 Nov 2016 20:12:09 GMT  
		Size: 51.4 MB (51405834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be60595e2f522189486f213fa1b806f6dc301c6c7583e09aff5c18169d8cb3bb`  
		Last Modified: Wed, 02 Nov 2016 20:11:54 GMT  
		Size: 24.6 KB (24649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4a26d64607fd079c68696223c5414b8673c8400682be193cab25b2edde59b0`  
		Last Modified: Wed, 02 Nov 2016 20:11:53 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
