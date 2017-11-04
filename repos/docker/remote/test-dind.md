## `docker:test-dind`

```console
$ docker pull docker@sha256:c15a833fcc49c76b36c758f140bfe9b36c45f3f25769d1c36b2d14522c06322a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:4ecc43e0b90b332da1605752fc5981d740697b581f3e46efc60a8e5fe233f1ff
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48340868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c605fd78f2027bcd0d406b82b31df5c7a1ca70f4feab052dd33e64eca4be9345`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 03:01:38 GMT
ENV DOCKER_CHANNEL=test
# Sat, 04 Nov 2017 03:01:38 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc2
# Sat, 04 Nov 2017 03:01:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 04 Nov 2017 03:01:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 04 Nov 2017 03:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 03:01:46 GMT
CMD ["sh"]
# Sat, 04 Nov 2017 03:02:07 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 04 Nov 2017 03:02:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 04 Nov 2017 03:02:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 04 Nov 2017 03:02:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 04 Nov 2017 03:02:12 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 04 Nov 2017 03:02:13 GMT
VOLUME [/var/lib/docker]
# Sat, 04 Nov 2017 03:02:13 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 03:02:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 04 Nov 2017 03:02:14 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cff98b4fdad40c158ed83003a47f89fbe0d7125354a32a13474d7b5d4016ac`  
		Last Modified: Sat, 04 Nov 2017 03:03:21 GMT  
		Size: 41.6 MB (41595512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d305d72b5369b9ffc58b51839b340da2a5283e73b972dc77d6a7341f987fc351`  
		Last Modified: Sat, 04 Nov 2017 03:03:12 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bceed957a34110ef90a98e719466ac0ab1eb397202a10efc899061a9e8484d08`  
		Last Modified: Sat, 04 Nov 2017 03:03:40 GMT  
		Size: 4.1 MB (4144752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e91254b014b18319d6615fbd0adae7d4c670e90a77d9b5caee8489e86867683`  
		Last Modified: Sat, 04 Nov 2017 03:03:40 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8902499e9bf5d265aba8bb8178e201cc56bbc8ff3beb352505fc2fb1ab08e9b`  
		Last Modified: Sat, 04 Nov 2017 03:03:40 GMT  
		Size: 179.8 KB (179774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b140940582c24221176da7328b1e67febbea8221fe9357f041fd0f39c8ab3657`  
		Last Modified: Sat, 04 Nov 2017 03:03:40 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
