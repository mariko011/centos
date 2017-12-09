## `docker:rc-dind`

```console
$ docker pull docker@sha256:ed8d32a1173c19d3c6d0ca2955ed52c9b6e127c0a374e012f118402011c55732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:c85bd351f9516ac71e54b58beabb017931e0f27613b294627d3ba73bc49916d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40907095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e6e189cc7d8b6e0cde134fb117fed38feb2f855140051b0ff2034095675e00`
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
# Sat, 09 Dec 2017 01:53:10 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc1
# Sat, 09 Dec 2017 01:53:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 09 Dec 2017 01:53:19 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 09 Dec 2017 01:53:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:53:20 GMT
CMD ["sh"]
# Sat, 09 Dec 2017 01:53:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 09 Dec 2017 01:53:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 09 Dec 2017 01:53:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 09 Dec 2017 01:53:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 09 Dec 2017 01:53:44 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:53:44 GMT
VOLUME [/var/lib/docker]
# Sat, 09 Dec 2017 01:53:45 GMT
EXPOSE 2375/tcp
# Sat, 09 Dec 2017 01:53:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 09 Dec 2017 01:53:45 GMT
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
	-	`sha256:719b7f3ed5789a436f3098ff1fb5bbf53a08c44d0bccadeffcb55dab4beeff1f`  
		Last Modified: Sat, 09 Dec 2017 01:55:24 GMT  
		Size: 34.5 MB (34496818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ac936154cad4e1b0d88a8abb2911208227986b6a2f665d7d202844797e3c80`  
		Last Modified: Sat, 09 Dec 2017 01:55:18 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e0debaa826f7f54dd3aaac817a3a228b9b91e35101a718c445f2ad9bb5c9eb`  
		Last Modified: Sat, 09 Dec 2017 01:55:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2b985f37f0328b02346a4b0eaa67934e11f4a63d0e794af20edf67018d8a86`  
		Last Modified: Sat, 09 Dec 2017 01:56:02 GMT  
		Size: 3.9 MB (3884791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a149281c16f70cc6b96163b04ab92786d2347a85fc12cbaa04263b474f07b5e2`  
		Last Modified: Sat, 09 Dec 2017 01:56:01 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049c0e2414f7de00197ddad5ea75a89da6e2dd6a4949146cd7305442150e072c`  
		Last Modified: Sat, 09 Dec 2017 01:56:02 GMT  
		Size: 179.8 KB (179758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9793327c6692911455ac8849e3f2234b8d52fc3ffdc105296feede145ca3a3`  
		Last Modified: Sat, 09 Dec 2017 01:56:01 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; s390x

```console
$ docker pull docker@sha256:d35ff8a374ddf3d34dba0cca6a7e083ebf79a7673424075888cf941471289182
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40378331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a82c37a0fef9e58a8d88daa216bece46ed11ec09f82a807a5f591ab0abc246`
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
# Sat, 09 Dec 2017 04:01:32 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc1
# Sat, 09 Dec 2017 04:01:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 09 Dec 2017 04:01:38 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 09 Dec 2017 04:01:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 09 Dec 2017 04:01:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 04:01:39 GMT
CMD ["sh"]
# Sat, 09 Dec 2017 04:02:00 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 09 Dec 2017 04:02:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 09 Dec 2017 04:02:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 09 Dec 2017 04:02:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 09 Dec 2017 04:02:04 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 09 Dec 2017 04:02:04 GMT
VOLUME [/var/lib/docker]
# Sat, 09 Dec 2017 04:02:04 GMT
EXPOSE 2375/tcp
# Sat, 09 Dec 2017 04:02:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 09 Dec 2017 04:02:04 GMT
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
	-	`sha256:c824749e6116b2f6bf1162a3956628051af3901a3c94b1d2441f4e4dbac4fc95`  
		Last Modified: Sat, 09 Dec 2017 04:03:37 GMT  
		Size: 33.6 MB (33632431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283823d0d3bdd8257da1afcb6867db510428a6aa7925fb8c7bd04aa216e4243f`  
		Last Modified: Sat, 09 Dec 2017 04:03:29 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ce1254c229f281e471e03d1f3b0f598a31a317637f54353b8a0ae1cd6dd5d2`  
		Last Modified: Sat, 09 Dec 2017 04:03:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442a6db06a3f461e06a34c42c08038c6d85ea33ade0ebd7a9a6dc533ba7ec2dc`  
		Last Modified: Sat, 09 Dec 2017 04:04:03 GMT  
		Size: 4.1 MB (4144747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e369632d6ca945ef5d0a82e432be655bd93bb099381449b2ac2bc1b77d3f64`  
		Last Modified: Sat, 09 Dec 2017 04:04:02 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff513f783c5751972e125559caf975423d8a34b01c1ab05d187513c7b712572`  
		Last Modified: Sat, 09 Dec 2017 04:04:02 GMT  
		Size: 179.8 KB (179770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963474d78b2c60d510002ae9e9283964cf7a8f55c4269a1b60265accac597fc9`  
		Last Modified: Sat, 09 Dec 2017 04:04:02 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
