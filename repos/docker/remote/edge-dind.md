## `docker:edge-dind`

```console
$ docker pull docker@sha256:6854dcc90e9813f3e082a72db425905858fd34fe31a3b1aa251d99035586ffa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:6c97f89cca24f9bdbd01a25b020dc0a14a8616270c6dd2c86c0834f9e2c2ef86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53878308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b47608445d99b2c013f13f845f3721f868bd2a29a341ecee67999f2046afb04`
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
# Fri, 01 Dec 2017 20:06:21 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 01 Dec 2017 20:06:21 GMT
ENV DOCKER_VERSION=17.11.0-ce
# Fri, 01 Dec 2017 20:06:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 01 Dec 2017 20:06:29 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 01 Dec 2017 20:06:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 01 Dec 2017 20:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 20:06:30 GMT
CMD ["sh"]
# Fri, 01 Dec 2017 20:06:55 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 01 Dec 2017 20:06:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 01 Dec 2017 20:06:56 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 01 Dec 2017 20:07:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 01 Dec 2017 20:07:02 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 01 Dec 2017 20:07:03 GMT
VOLUME [/var/lib/docker]
# Fri, 01 Dec 2017 20:07:03 GMT
EXPOSE 2375/tcp
# Fri, 01 Dec 2017 20:07:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 01 Dec 2017 20:07:03 GMT
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
	-	`sha256:d3df0e0c027a1e81c966f5bcd7ba7facc1d30cbee09d873344d50168d6f579f8`  
		Last Modified: Fri, 01 Dec 2017 20:09:11 GMT  
		Size: 47.5 MB (47468013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd72d6ded49d239498108aa1ea0fca27e5483bc97e125854409c35c2cfa3034`  
		Last Modified: Fri, 01 Dec 2017 20:09:01 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddabcdf4eb33252cf68b1130cef4801b4cf04b1a7b76f2310e104e94cb8a9567`  
		Last Modified: Fri, 01 Dec 2017 20:09:01 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be44f44a5c044437802d85fb8f5b3da47aec9f1eb1f87cc87f9dc330c62aef7b`  
		Last Modified: Fri, 01 Dec 2017 20:10:20 GMT  
		Size: 3.9 MB (3884817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1a9bccb6341ee9f251eac6844005158fac17c017681614bc017dd07fc76165`  
		Last Modified: Fri, 01 Dec 2017 20:10:19 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17d8e71e857363145dfd3536d0ff7a184fc6b0dfbe788f60d7d1513193eac14`  
		Last Modified: Fri, 01 Dec 2017 20:10:19 GMT  
		Size: 179.8 KB (179750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f50fccc0a2c90d56103c17f28b237e61f6786f79e312dce8a5ad782697a207`  
		Last Modified: Fri, 01 Dec 2017 20:10:20 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7939ff0ea34ae1802d53644f682fcd4c3583adb1859eea52f9f555f2f14cdb17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45503025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24aeafb83e50ce99834a1a3336086480c7b1bf204ef3e2ac4dbf8d7c808c234b`
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
# Thu, 26 Oct 2017 05:15:44 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 23 Nov 2017 07:00:57 GMT
ENV DOCKER_VERSION=17.11.0-ce
# Thu, 23 Nov 2017 07:01:08 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Nov 2017 07:01:09 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Nov 2017 07:01:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Nov 2017 07:01:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Nov 2017 07:01:12 GMT
CMD ["sh"]
# Thu, 23 Nov 2017 07:01:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Nov 2017 07:01:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Nov 2017 07:01:49 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Nov 2017 07:01:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Nov 2017 07:01:56 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 23 Nov 2017 07:01:57 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Nov 2017 07:01:57 GMT
EXPOSE 2375/tcp
# Thu, 23 Nov 2017 07:01:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Nov 2017 07:01:59 GMT
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
	-	`sha256:c24ed3db5e717bfe822cb9afa0b802351c912e25531bdbf2f4ff4cd1769afa8c`  
		Last Modified: Thu, 23 Nov 2017 07:03:39 GMT  
		Size: 39.4 MB (39428905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d95bd17c13651663b1475c967ff49a9bf59c0d0e5ed175a7917cea36295af1`  
		Last Modified: Thu, 23 Nov 2017 07:03:22 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec52e5d56afac49add4b462d0588c3796d620de17818f7ae178a92c424c7ffbc`  
		Last Modified: Thu, 23 Nov 2017 07:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9a7048cdb3a4d8a82f3f0fd2dc0f3286c3d153892778844e008d8fadea51e4`  
		Last Modified: Thu, 23 Nov 2017 07:05:50 GMT  
		Size: 3.6 MB (3624710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e092263f8cf3d08f98ac9e483faea2763d42e3175c4f8128266677cd155a39`  
		Last Modified: Thu, 23 Nov 2017 07:05:47 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cc37805e44e458b6b311ce96d66a3c96b5f7a6f39cf7862cbd675330a23522`  
		Last Modified: Thu, 23 Nov 2017 07:05:49 GMT  
		Size: 179.8 KB (179761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7fac91f87b07f072b96ce20ef50ac0b22fdbd9f65d9ee0c661aaa98a6c880f`  
		Last Modified: Thu, 23 Nov 2017 07:05:47 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:de5e499a230dac6a9bfa26964b27023178d2efc985b21aa7e6658b653a50486e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43878202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992ce040fd33dbefc9ea2584a01fbf180e981300bfd3153286100c4fd8a60810`
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
# Thu, 26 Oct 2017 05:15:32 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 23 Nov 2017 11:36:19 GMT
ENV DOCKER_VERSION=17.11.0-ce
# Thu, 23 Nov 2017 11:36:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Nov 2017 11:36:32 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Nov 2017 11:36:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Nov 2017 11:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Nov 2017 11:36:35 GMT
CMD ["sh"]
# Thu, 23 Nov 2017 11:36:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Nov 2017 11:36:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Nov 2017 11:36:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Nov 2017 11:37:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Nov 2017 11:37:04 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 23 Nov 2017 11:37:05 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Nov 2017 11:37:06 GMT
EXPOSE 2375/tcp
# Thu, 23 Nov 2017 11:37:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Nov 2017 11:37:08 GMT
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
	-	`sha256:64c0aafdcf5f62a51747ef334ff8ef01a49ab159462c5fc612d7cbbed45e5ff6`  
		Last Modified: Thu, 23 Nov 2017 11:37:57 GMT  
		Size: 39.0 MB (39020204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4adb734167e939d7a6f619ad877267245198e8cf54b7eb3ebc817bbe0af424`  
		Last Modified: Thu, 23 Nov 2017 11:37:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d3491c49a9fe0fd6ea712bad3342549c2689e4bdaede6dc9646e64fcd71898`  
		Last Modified: Thu, 23 Nov 2017 11:37:46 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ce5e122413a493eba19d7d6a668a4b6efcd1850fa0b6b42865e849868bef89`  
		Last Modified: Thu, 23 Nov 2017 11:38:29 GMT  
		Size: 2.3 MB (2315564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354798233fff6ca7a99f2a88aba485b9808c56f14bcff66168cc33f67a37a4d8`  
		Last Modified: Thu, 23 Nov 2017 11:38:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57a27f517afd42a6e8b44967d2973e8081680e19e093de07e414e2231b4d987`  
		Last Modified: Thu, 23 Nov 2017 11:38:29 GMT  
		Size: 176.2 KB (176178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953903b702da564ed2ac5cdea76c0efff0e108b7a2bd52c114fd4992367b44f`  
		Last Modified: Thu, 23 Nov 2017 11:38:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:6ddebe95fdaf31d749f1cfa1b4e4b9065001559a8884338b7510edc188ca5d38
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48346177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dcccb2812293f5493b3be0048f4a574d107cef875037ce94a0c55f8c420dd3`
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
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 23 Nov 2017 04:01:27 GMT
ENV DOCKER_VERSION=17.11.0-ce
# Thu, 23 Nov 2017 04:01:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Nov 2017 04:01:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Nov 2017 04:01:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Nov 2017 04:01:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Nov 2017 04:01:33 GMT
CMD ["sh"]
# Thu, 23 Nov 2017 04:01:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Nov 2017 04:01:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Nov 2017 04:01:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Nov 2017 04:01:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Nov 2017 04:01:54 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 23 Nov 2017 04:01:55 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Nov 2017 04:01:55 GMT
EXPOSE 2375/tcp
# Thu, 23 Nov 2017 04:01:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Nov 2017 04:01:55 GMT
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
	-	`sha256:2ae6643ba2e559f6d5bc240ff46b96e2d82525599d13a4f8efc70c3331d4ddb8`  
		Last Modified: Thu, 23 Nov 2017 04:02:38 GMT  
		Size: 41.6 MB (41600293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f39017ec0b497033b8fcfc746ce31188f2cf9abde0f153bf1d7a4bfa4c14fa`  
		Last Modified: Thu, 23 Nov 2017 04:02:28 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6169982fb51b1bd163942a54e05aae161f54c6bce62b621919224c967f280dd1`  
		Last Modified: Thu, 23 Nov 2017 04:02:28 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee2e0e17f1a588842bebe7c6eea38cd74f48363facf83122b0e10900a151efe`  
		Last Modified: Thu, 23 Nov 2017 04:03:13 GMT  
		Size: 4.1 MB (4144729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0319292e790db0dd244ef30e14f397aeb4afc8fb1dafdc97fe13827e764b40`  
		Last Modified: Thu, 23 Nov 2017 04:03:13 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e1725d08f8710c4be53b912353eac9d7529422b6c6af276345e102dd152599`  
		Last Modified: Thu, 23 Nov 2017 04:03:12 GMT  
		Size: 179.8 KB (179773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3976711f4d1ac62a07eb8984e89b2d9f31c756d5bf715c9aed2d4141efa717b7`  
		Last Modified: Thu, 23 Nov 2017 04:03:14 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
