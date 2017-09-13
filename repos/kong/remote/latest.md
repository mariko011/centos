## `kong:latest`

```console
$ docker pull kong@sha256:e3dae5b6c2c96f63c18d38f948063adb8973da709a937190d5772426a0f887be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:af97b2291c45e0c91205d5cbd6d268dc6e1f69e17d22cf9090e17cfede1e8462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121033954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23adb5933a68c99b1520f625d20102915840d05789a875964ff60eb046083173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 13 Sep 2017 14:42:56 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Wed, 13 Sep 2017 14:42:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Wed, 13 Sep 2017 14:42:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 15:08:17 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Wed, 13 Sep 2017 15:08:17 GMT
ENV KONG_VERSION=0.11.0
# Wed, 13 Sep 2017 15:08:36 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 13 Sep 2017 15:08:37 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 15:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 15:08:37 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 13 Sep 2017 15:08:37 GMT
STOPSIGNAL [SIGTERM]
# Wed, 13 Sep 2017 15:08:37 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:2d490773b5db506c3543d518c778d4dddd31ff54c0e8a6e29fa6613884fc75b9`  
		Last Modified: Wed, 13 Sep 2017 14:45:24 GMT  
		Size: 72.3 MB (72257876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b13c408290a729afe07f7e6eb6e42d38c780f1ee3a5b83139e53106f02f29a`  
		Last Modified: Wed, 13 Sep 2017 15:10:03 GMT  
		Size: 48.8 MB (48775754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fe98f8edc4e832fe8fe666d62c4faf59691ef631ebd457485ed1f942acbc8c`  
		Last Modified: Wed, 13 Sep 2017 15:09:56 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
