## `docker:rc-dind`

```console
$ docker pull docker@sha256:e7e3cfe64225989f5467010a360b84bd4e3661544133aa524ae442e767670c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:bd1b9f2b10b32fa62a33c9f3e3d08d41d4a7ca1b97aca8d0d392ab55c3349620
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41020473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d80c1128d07fd3b1458b0ee4f4e1a49404f80fd52ebe2974ac1f746a732a9a2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Tue, 19 Dec 2017 18:17:13 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc3
# Tue, 19 Dec 2017 18:17:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 19 Dec 2017 18:17:23 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 19 Dec 2017 18:17:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 19 Dec 2017 18:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Dec 2017 18:17:24 GMT
CMD ["sh"]
# Tue, 19 Dec 2017 18:17:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 19 Dec 2017 18:17:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 19 Dec 2017 18:17:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 19 Dec 2017 18:17:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 19 Dec 2017 18:17:57 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Tue, 19 Dec 2017 18:17:57 GMT
VOLUME [/var/lib/docker]
# Tue, 19 Dec 2017 18:17:58 GMT
EXPOSE 2375/tcp
# Tue, 19 Dec 2017 18:17:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 19 Dec 2017 18:17:58 GMT
CMD []
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
	-	`sha256:16aaad34e115b5a6fb2d386eb471a8a012b5c149ed98c064c35d33c1fb20564b`  
		Last Modified: Tue, 19 Dec 2017 18:25:23 GMT  
		Size: 34.6 MB (34610169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e6bc7334710e410c6a4d661587f621f4f52396441426c4cc69484cc086cd31`  
		Last Modified: Tue, 19 Dec 2017 18:25:14 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc8eb225900d9aa38f23f4b4d292a9b8630e7cecb1013b42d18bda6358715b`  
		Last Modified: Tue, 19 Dec 2017 18:25:14 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e37b21d5a2145ec07df91e2c0d486810748c15c2ea67766ce53267ca2d4966`  
		Last Modified: Tue, 19 Dec 2017 18:32:01 GMT  
		Size: 3.9 MB (3884811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff48d408aa7d13f76af374e070e078d53ac5a8fdce2d18c3dfd6287c7c20a9c`  
		Last Modified: Tue, 19 Dec 2017 18:31:59 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f3de2e0200c9a5596b74203d995685ae9935ad5b07ea3a3a4dae3e6e35554f`  
		Last Modified: Tue, 19 Dec 2017 18:32:00 GMT  
		Size: 179.8 KB (179762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113682f1f90606a06915cf63bf426ac1b96073403d6117aa81979002ac02f0a`  
		Last Modified: Tue, 19 Dec 2017 18:31:59 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:03cdf5acb3cbba92151d99e6d8e85b0038ab86ad8c4f60b65f027909335d4a1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37569680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0ea3f9450a86f975e58b0a57632754701ec13c6748cb07781b7f248093288e`
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
# Wed, 20 Dec 2017 07:00:37 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc3
# Wed, 20 Dec 2017 07:00:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 20 Dec 2017 07:00:50 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 20 Dec 2017 07:00:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 20 Dec 2017 07:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:00:53 GMT
CMD ["sh"]
# Wed, 20 Dec 2017 07:01:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 20 Dec 2017 07:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 20 Dec 2017 07:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 20 Dec 2017 07:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 20 Dec 2017 07:01:29 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 20 Dec 2017 07:01:30 GMT
VOLUME [/var/lib/docker]
# Wed, 20 Dec 2017 07:01:31 GMT
EXPOSE 2375/tcp
# Wed, 20 Dec 2017 07:01:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 20 Dec 2017 07:01:33 GMT
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
	-	`sha256:0e926cedd2eaf0f17f4894fa677fbad6ec3bd803e7913ee04a3d5286bfa553ba`  
		Last Modified: Wed, 20 Dec 2017 07:02:46 GMT  
		Size: 31.5 MB (31495525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8bcff8283bbaa5f5062fe489fe3f5b9d33dd54114d9b04b4144d008ed33a48`  
		Last Modified: Wed, 20 Dec 2017 07:02:29 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a1d71d36aa63ca1d13cf405e04ac19b96ec1b6209db234cc24ed0a9dd7e5ef`  
		Last Modified: Wed, 20 Dec 2017 07:02:31 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d23a4ff52ed542c10a7752f267e3cbd2d2f14bb12237ed1538702b346c791f`  
		Last Modified: Wed, 20 Dec 2017 07:03:18 GMT  
		Size: 3.6 MB (3624744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de5a2419049db95b3aea000e744b5a8e25359492e86c672101f2002f2c81d00`  
		Last Modified: Wed, 20 Dec 2017 07:03:16 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b00844a212033adfcf6f240e676c22861edf31530a5e855b733f599aa7f1622`  
		Last Modified: Wed, 20 Dec 2017 07:03:16 GMT  
		Size: 179.8 KB (179757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418eca7f37c895dc26815c65a5599a2726d61f8854133b718e0e05f05d06b3d7`  
		Last Modified: Wed, 20 Dec 2017 07:03:16 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:4d9af7f702e305305ef4da080aa24db4336001adee5da10e30779782ee754a31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36038851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a048afe6e3faab0b7d4d9c6c11d751999ea4f93d8b5306fa3ebbdd998886645`
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
# Wed, 20 Dec 2017 11:36:21 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc3
# Wed, 20 Dec 2017 11:36:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 20 Dec 2017 11:36:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 20 Dec 2017 11:36:32 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 20 Dec 2017 11:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:36:35 GMT
CMD ["sh"]
# Wed, 20 Dec 2017 11:36:55 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 20 Dec 2017 11:36:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 20 Dec 2017 11:37:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 20 Dec 2017 11:37:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 20 Dec 2017 11:37:08 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 20 Dec 2017 11:37:10 GMT
VOLUME [/var/lib/docker]
# Wed, 20 Dec 2017 11:37:11 GMT
EXPOSE 2375/tcp
# Wed, 20 Dec 2017 11:37:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 20 Dec 2017 11:37:14 GMT
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
	-	`sha256:5d02789aacba218153a42f85fd139fdf615d7130e26879af826c43f6aa4aa16c`  
		Last Modified: Wed, 20 Dec 2017 11:38:09 GMT  
		Size: 31.2 MB (31180792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619ee686cd6780f159c087d10aa3b043e3933224920f56b6f915514796bda9f5`  
		Last Modified: Wed, 20 Dec 2017 11:38:00 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a299abdb4a5c833b3312c293e2f1580466f8df656f21d43e696895963b822`  
		Last Modified: Wed, 20 Dec 2017 11:38:01 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8edbd6f3c08e6b30243374c99c8e05cdccab33361d3cecc7cdcf774dc5d15f2`  
		Last Modified: Wed, 20 Dec 2017 11:38:34 GMT  
		Size: 2.3 MB (2315629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556892d65995f400bcd2066646799fdfd17edce746abd4450d847db8fb56eb2`  
		Last Modified: Wed, 20 Dec 2017 11:38:33 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8ba57ba0f1c0d0773d7ccf8cb178e29fce01cc9a6340adeedca402ce007f72`  
		Last Modified: Wed, 20 Dec 2017 11:38:34 GMT  
		Size: 176.2 KB (176176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6b7a2f65359f77329711f767d4e79050c839a4fd15797e299ad4962bd931c2`  
		Last Modified: Wed, 20 Dec 2017 11:38:34 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
