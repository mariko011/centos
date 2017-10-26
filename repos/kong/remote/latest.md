## `kong:latest`

```console
$ docker pull kong@sha256:4261df6cab2b690cc7a01c6dae1cb815696be34aad40d216e4041f601f3e56c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:f79fec444490134a17eb5faee5d991974af746227d2f37128c9256952442c89c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122427076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2604768d2757f4eaaeb37685abc41458a4a7c08e4450b79a88bdf5e14640387a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Sep 2017 15:13:25 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Thu, 14 Sep 2017 15:13:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Thu, 14 Sep 2017 15:13:25 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 15:30:07 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 26 Oct 2017 19:09:26 GMT
ENV KONG_VERSION=0.11.1
# Thu, 26 Oct 2017 19:09:50 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 26 Oct 2017 19:09:50 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 19:09:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:09:50 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 26 Oct 2017 19:09:50 GMT
STOPSIGNAL [SIGTERM]
# Thu, 26 Oct 2017 19:09:51 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc69b6ad2eb70af5598af4d835628fd15edbdb61e7239c6fab797cc1f5d521`  
		Last Modified: Thu, 26 Oct 2017 19:10:52 GMT  
		Size: 49.0 MB (49039805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9a8534421886ee0dd772ddbfa8ecef32debe26a7837472f9f3c8b0de5cdca`  
		Last Modified: Thu, 26 Oct 2017 19:10:46 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
