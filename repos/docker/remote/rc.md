## `docker:rc`

```console
$ docker pull docker@sha256:9f169fe9b31acedfd6bdee7c14f1a5035ecfbf5546989fb411ace35d12abb3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:e82329c4add6e53820c4591d5ccbe9380450f5bfd854102769efde1c14cbaa51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33043351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570ce696580ae0998214c5269097e00415eb4449ca1adf0245896caa73857839`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:06:17 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 01 Dec 2017 20:06:21 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 05 Dec 2017 02:50:28 GMT
ENV DOCKER_CHANNEL=test
# Tue, 05 Dec 2017 02:50:29 GMT
ENV DOCKER_VERSION=17.09.1-ce-rc1
# Tue, 05 Dec 2017 02:50:36 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 05 Dec 2017 02:50:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 05 Dec 2017 02:50:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 05 Dec 2017 02:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 02:50:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9ac44c1841d6907db77d1476941b90fbf7c3499440bf9068a83a66aecc237f`  
		Last Modified: Fri, 01 Dec 2017 20:09:01 GMT  
		Size: 351.0 KB (351004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a848dcd23bd7ecdadc08642cb18c81b6fd36e0f0b99ee7660d13bf5cf244dfc9`  
		Last Modified: Fri, 01 Dec 2017 20:09:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aa54e852e205097412bd4b8f74da60285af9d76a7a6351abf0e4bb3a68eb6`  
		Last Modified: Tue, 05 Dec 2017 02:51:50 GMT  
		Size: 30.7 MB (30699408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd20cb484370170e66756778bf5608abd96ee9f5ac1150d69d82a1c8681dcc4`  
		Last Modified: Tue, 05 Dec 2017 02:51:42 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda13deaaa9fdad49f5751db281e4bc6afb560b098f8ac8828231de039497e8`  
		Last Modified: Tue, 05 Dec 2017 02:51:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
