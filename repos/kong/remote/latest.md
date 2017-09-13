## `kong:latest`

```console
$ docker pull kong@sha256:c8b01e34acb7ddfad8ef77b8558e3f49782822b2c81336e4a5b8143b08102b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:2e25f54f4561c4882de8926f07138f8de1d9e12ee8a475af8ad4ad40e1609502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121022592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a314bd8141e7dc4efc7d0da0bac1e1d8b934061998d0c933901b091ba98db9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:16:18 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 01:16:18 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 01:16:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 01:16:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 01:16:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:16:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 01:16:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 01:16:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb87321589798c1788a2fc5275b0941c36ef041e5db8df60d94ce89b0431ec14`  
		Last Modified: Wed, 13 Sep 2017 01:18:01 GMT  
		Size: 48.8 MB (48774770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6ef3db6dd885c2628f4dd93f52a317fdcbed56569770f37be0bc743c0820d5`  
		Last Modified: Wed, 13 Sep 2017 01:17:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
