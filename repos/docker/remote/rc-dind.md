## `docker:rc-dind`

```console
$ docker pull docker@sha256:08195c1844af8fa63ece0122fcd096ebb62e55221fede7fdb16d73ad841be9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:559ad1a39458bb92db4137e82eed66880b4c460ba2eafa769d5a4a9016e9ff81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011eab3e8db9fda7dd35ade9ecd538bedef2a14421f2710429c9d72def5e73e1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 08:24:44 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 04 Nov 2017 08:24:44 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 08:24:45 GMT
ENV DOCKER_CHANNEL=test
# Sat, 04 Nov 2017 08:24:45 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc2
# Sat, 04 Nov 2017 08:24:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 13 Nov 2017 15:59:44 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Mon, 13 Nov 2017 15:59:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 13 Nov 2017 15:59:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:59:45 GMT
CMD ["sh"]
# Mon, 13 Nov 2017 16:00:00 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Mon, 13 Nov 2017 16:00:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 13 Nov 2017 16:00:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 13 Nov 2017 16:00:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 13 Nov 2017 16:00:05 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:00:05 GMT
VOLUME [/var/lib/docker]
# Mon, 13 Nov 2017 16:00:05 GMT
EXPOSE 2375/tcp
# Mon, 13 Nov 2017 16:00:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 13 Nov 2017 16:00:06 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776090ac3d78f3d8c01e4847085cd7ce1ccd93ffc5dccca40e3bd72e59620c79`  
		Last Modified: Sat, 04 Nov 2017 08:27:08 GMT  
		Size: 351.0 KB (350996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0413fc9bc7476d36558854ef8abfec17b223d72ab453ac315e64ffd49a80fe`  
		Last Modified: Sat, 04 Nov 2017 08:27:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dab87ad20fb8c3a809e61088738d5f2818d00dc294d500f5903bb277f43b21`  
		Last Modified: Sat, 04 Nov 2017 08:27:17 GMT  
		Size: 47.5 MB (47462020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eee8ec5852d203e7f247d0b40c17729a79476ae71bfd044136904411b3ff0d5`  
		Last Modified: Mon, 13 Nov 2017 16:00:42 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0ca958af573e774abc0fa3a4ae5b966a8b3311acb0e1e2586be5b753b9634c`  
		Last Modified: Mon, 13 Nov 2017 16:00:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3207c4d3a0e58ebeb7808fec3124a876760663e0e0b2b0efac8f350c088a28`  
		Last Modified: Mon, 13 Nov 2017 16:01:20 GMT  
		Size: 3.9 MB (3884767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82513cd057b3e04e495a595027b6cc4f8f1f9248145503303b461c14f55e4f08`  
		Last Modified: Mon, 13 Nov 2017 16:01:18 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af74f297688caceaafc8c6cb8cfb5153c9062fa0c0c78ba8e6af618706dbe9`  
		Last Modified: Mon, 13 Nov 2017 16:01:19 GMT  
		Size: 179.7 KB (179747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed710349c4c72fba1ed4a98ea3f2e4e00ab1c3a00b40d02762387cf14c5d559`  
		Last Modified: Mon, 13 Nov 2017 16:01:19 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e2e9ebbb3b7516eca5f84a5c21a0489ca2546a065435340508deffc84e79656c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45499576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27857a29c367fc856aaa1a478a75e891cf98a7f4706e61eea8be9459bf1cac4d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 06:00:55 GMT
ENV DOCKER_CHANNEL=test
# Sat, 04 Nov 2017 06:00:56 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc2
# Sat, 04 Nov 2017 06:01:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 04 Nov 2017 06:01:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 04 Nov 2017 06:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 06:01:11 GMT
CMD ["sh"]
# Sat, 04 Nov 2017 06:01:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 04 Nov 2017 06:01:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 04 Nov 2017 06:01:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 04 Nov 2017 06:01:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 04 Nov 2017 06:01:48 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 04 Nov 2017 06:01:49 GMT
VOLUME [/var/lib/docker]
# Sat, 04 Nov 2017 06:01:49 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 06:01:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 04 Nov 2017 06:01:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e2c7db3c962b64bd9e45f7e0fc67ff82686b0367944f40a62c36a03d413fcb`  
		Last Modified: Sat, 04 Nov 2017 06:06:16 GMT  
		Size: 39.4 MB (39426009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd35d5a16ea7d75bab2659782f41227bc2c37136080450069cffa3c7fcd4ddf`  
		Last Modified: Sat, 04 Nov 2017 06:05:22 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73603255272e3111fdda3a4483ccc7981ecfa9049a654bf6bf489634eb27282`  
		Last Modified: Sat, 04 Nov 2017 06:07:20 GMT  
		Size: 3.6 MB (3624712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d984d57d28ee37ddf9523872e85b3f64de2bdea700adb7fc3d4615514356c46`  
		Last Modified: Sat, 04 Nov 2017 06:07:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c703dac0b92ff779fade2fcd30c810e7ef10b74b2fb5af0ce10a8a105bac12`  
		Last Modified: Sat, 04 Nov 2017 06:07:18 GMT  
		Size: 179.8 KB (179758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7fec1c0bddb5b4ff5d83c7153fbf280e31caf543ff82773503b7f66a84dbeb`  
		Last Modified: Sat, 04 Nov 2017 06:07:18 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:d30d1dcaa4763dedb3ce37b76cd130e27dceb6b9bbffd9afb2a06f0ec55e0f78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43869094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96654a9acb25e1496638a0d5e5d5c166b7e68ab1ce87c4b1a50960e3e807e65b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:23 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 10:36:25 GMT
ENV DOCKER_CHANNEL=test
# Sat, 04 Nov 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc2
# Sat, 04 Nov 2017 10:36:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 04 Nov 2017 10:36:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:36:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 10:36:41 GMT
CMD ["sh"]
# Sat, 04 Nov 2017 10:36:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 04 Nov 2017 10:37:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 04 Nov 2017 10:37:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 04 Nov 2017 10:37:08 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 04 Nov 2017 10:37:09 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 04 Nov 2017 10:37:10 GMT
VOLUME [/var/lib/docker]
# Sat, 04 Nov 2017 10:37:12 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 10:37:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 04 Nov 2017 10:37:14 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786040648c6ce95b57cfce679096fb7515d48596fa35ebd8347645924dc7afcf`  
		Last Modified: Thu, 26 Oct 2017 05:18:55 GMT  
		Size: 354.2 KB (354237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb59a10fa001950eb807c32d69dfdb981e184862354d5a807966f342e49f5405`  
		Last Modified: Thu, 26 Oct 2017 05:18:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7148477f9e61bf16cd11023f49801b13df17ee8d7fdae7d63386a2695afaf92a`  
		Last Modified: Sat, 04 Nov 2017 10:38:18 GMT  
		Size: 39.0 MB (39011617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa3951654e20de2b5f986bae4d225cd070bdbbc4fe6f559415d00c78a1c3f26`  
		Last Modified: Sat, 04 Nov 2017 10:38:07 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8e629bae818fa1282d9c14b1c27a5efd94e7bcefe1b7384bfd9bf141ea3bb4`  
		Last Modified: Sat, 04 Nov 2017 10:38:50 GMT  
		Size: 2.3 MB (2315599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd9945f04b1ad2493fb15f0cf44f64ed2e4ad2234e4baa08b45f9aab9f918d3`  
		Last Modified: Sat, 04 Nov 2017 10:38:50 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4240feb0f0f298f71d9b29c550b8fe0725e9bf928679c78d9f075c5a66d95`  
		Last Modified: Sat, 04 Nov 2017 10:38:50 GMT  
		Size: 176.2 KB (176175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a377238faf23afe0c6c8ee5d89e19ddb9dd181b6cb612f449c6e25eeb86365`  
		Last Modified: Sat, 04 Nov 2017 10:38:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; s390x

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
