## `docker:dind`

```console
$ docker pull docker@sha256:852aa209e22c95de9c30dad23343ccb32f93556f21dc9d9bbb0b4c348e161c95
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2102ff6d9b43ae4bac8facb8ce0ede2cedd21b148a2c45d8f048af7ee184e256`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 11 Jan 2017 03:24:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 11 Jan 2017 03:24:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 11 Jan 2017 03:24:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 11 Jan 2017 03:24:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:17 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Jan 2017 03:24:17 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 03:24:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:18 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc44be1534c698e10a6f02d84eccb61caacf88e30a36652410b02fe07c9e9c`  
		Last Modified: Wed, 11 Jan 2017 03:28:07 GMT  
		Size: 2.1 MB (2065063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d474463ce96af7ed36436e7a223c6d949a62589a4c125e1c6aa8db5021d61`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd45d3a2239087bc387e8e398756a109845127d92178997665731759a229a`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1169f19385d5c6da623df4b322d83088ecc80a1b4cd672822a0de79e2903d0f3`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
