## `kong:latest`

```console
$ docker pull kong@sha256:96aed0b9900a44d702a1fe07756407694a3a681c0acca62c07bb55d0330a2706
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123232716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506d877085f688b1033bed6b4284d26d57387295e461e0456b74f1660088d5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Mon, 05 Jun 2017 17:33:11 GMT
ADD file:d22a9c627d1d1f32a8db8ba273b7eed2b2b8d0c4e812063082a0c2ff0548525a in / 
# Mon, 05 Jun 2017 17:33:14 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170605
# Mon, 05 Jun 2017 17:33:14 GMT
CMD ["/bin/bash"]
# Mon, 05 Jun 2017 19:37:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 05 Jun 2017 19:37:08 GMT
ENV KONG_VERSION=0.10.3
# Mon, 05 Jun 2017 19:37:32 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 05 Jun 2017 19:37:35 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Mon, 05 Jun 2017 19:37:37 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Mon, 05 Jun 2017 19:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 05 Jun 2017 19:37:39 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Mon, 05 Jun 2017 19:37:40 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:d5e46245fe40c2d1ab72bfe328de28549b605b2587ab2fa8715f54e3e2de9c5d`  
		Last Modified: Mon, 05 Jun 2017 17:33:51 GMT  
		Size: 70.5 MB (70492578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c109054832c0527c4969e2bb38a6136c6e34aa74cc2f1138de79597757a4a914`  
		Last Modified: Mon, 05 Jun 2017 19:38:36 GMT  
		Size: 52.7 MB (52715272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c943832853da39e7851d954927d8d42bd5dec1f5c5ee062e1214770788d728`  
		Last Modified: Mon, 05 Jun 2017 19:38:23 GMT  
		Size: 24.6 KB (24645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804410da3f0ca59e84e896f7300803a63fdf6adebf8d1e104b2f34c4bf70a6c`  
		Last Modified: Mon, 05 Jun 2017 19:38:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
