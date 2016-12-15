## `kong:latest`

```console
$ docker pull kong@sha256:c5f977c322cd8b48a5c17f4d7dd434f02f9ca8c14068860f5be4bc68ea7fbd77
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133620217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9429786db71ef3760b83964ab40abdbd568fd3ae0a07b470d8ef71efb3dd5c1`
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
# Thu, 15 Dec 2016 17:52:30 GMT
ENV KONG_VERSION=0.9.6
# Thu, 15 Dec 2016 17:53:04 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 15 Dec 2016 17:53:07 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 15 Dec 2016 17:53:08 GMT
COPY file:324f2e5f56829733b3c3c8b6971998202fa01bf7368caac6c1971fcec0464e8c in /docker-entrypoint.sh 
# Thu, 15 Dec 2016 17:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Dec 2016 17:53:10 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 15 Dec 2016 17:53:11 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:08d48e6f1cff259389732d35307bb877215fa28867cdaff50c1dbd6e0b993c1f`  
		Last Modified: Wed, 02 Nov 2016 19:52:49 GMT  
		Size: 70.5 MB (70481699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68218fca3d0349f4350515b0fd1b77fa465c12026fc05818f19d35174bc58d2`  
		Last Modified: Thu, 15 Dec 2016 17:53:35 GMT  
		Size: 63.1 MB (63113627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada36494d6cf5daefeb3f356468886dce8bf0a44065752b223bac5d8949388ef`  
		Last Modified: Thu, 15 Dec 2016 17:53:15 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3bc58fa2ccc32284e184a28ae48c234d94ebd2ea05b6a564d2c84c818a550c`  
		Last Modified: Thu, 15 Dec 2016 17:53:15 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
