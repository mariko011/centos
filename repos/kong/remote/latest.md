## `kong:latest`

```console
$ docker pull kong@sha256:507c3a0eab679071c9a6d9ad83005572f0b4f53d4f45a9d1601b5f450ee51b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:2515a825fc580cb223eff800ec27c1065adc2f15e5cf32543487997b90d20611
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122535372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bd520edf34adfbb68fb7f06f363f82047a560132ec88aafb6c168c93f0f439`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 08 Jan 2018 19:58:26 GMT
ADD file:6bba01fe946852a560a939627ba0bd1b219aaf9abc538d9e2d8470d475c5a399 in / 
# Mon, 08 Jan 2018 19:58:27 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 19:58:27 GMT
CMD ["/bin/bash"]
# Mon, 08 Jan 2018 20:28:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 08 Jan 2018 20:29:49 GMT
ENV KONG_VERSION=0.11.2
# Mon, 08 Jan 2018 20:30:12 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 08 Jan 2018 20:30:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 08 Jan 2018 20:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Jan 2018 20:30:13 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 08 Jan 2018 20:30:14 GMT
STOPSIGNAL [SIGTERM]
# Mon, 08 Jan 2018 20:30:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6324aab5ef83f053c741718b6bfca7b2b146211ef36d9e3a67831975afa74db`  
		Last Modified: Mon, 08 Jan 2018 20:37:13 GMT  
		Size: 48.9 MB (48861836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00065c1b4232f9c003875891a7f99bed31f1ec28dd6b8d2534a6cfec2f43e338`  
		Last Modified: Mon, 08 Jan 2018 20:37:02 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
