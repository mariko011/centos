## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:e863d4bf9a491fc26fe732be286f0b9867f2d74230a98977ff6e0a2932becc6b
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34139248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6e37317587edd1d9b518b8f8a9716e8e20914efab912b9ac67bf06255656b1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 24 Aug 2016 17:03:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 24 Aug 2016 17:03:02 GMT
ENV DOCKER_VERSION=1.12.1
# Wed, 24 Aug 2016 17:03:03 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Wed, 24 Aug 2016 17:03:08 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 24 Aug 2016 17:03:10 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Wed, 24 Aug 2016 17:03:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:03:12 GMT
CMD ["sh"]
# Wed, 24 Aug 2016 17:03:17 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 24 Aug 2016 17:03:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 24 Aug 2016 17:03:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 24 Aug 2016 17:03:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 24 Aug 2016 17:03:24 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Wed, 24 Aug 2016 17:03:25 GMT
VOLUME [/var/lib/docker]
# Wed, 24 Aug 2016 17:03:26 GMT
EXPOSE 2375/tcp
# Wed, 24 Aug 2016 17:03:27 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:03:29 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85390d54884a32f429770f7268f31d99514674032b0940fc5dfdba92e5e661e`  
		Last Modified: Wed, 24 Aug 2016 17:05:46 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f91c3758487f2f08fe84cae7eb3535d93bdbae8df491f5d42f4b547b635377`  
		Last Modified: Wed, 24 Aug 2016 17:05:35 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b51c99d805bd237ceef8c5b5420f955f71e487cd65d105d1da436287596bdd5`  
		Last Modified: Wed, 24 Aug 2016 17:06:32 GMT  
		Size: 2.1 MB (2065033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17755ab5de6c1c4fee8d95140896b0e79d06bd8d5b199b2c658201af112203`  
		Last Modified: Wed, 24 Aug 2016 17:06:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fdd6b0fcb278ee6413e788e7ca615acfefe3a335155d1d249c6f9c6f64ee77`  
		Last Modified: Wed, 24 Aug 2016 17:06:30 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3272979ed7ecf55dcd4e349803bbd7e471f06786f8076954f003fe0e4a5d0b`  
		Last Modified: Wed, 24 Aug 2016 17:06:30 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
