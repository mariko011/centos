## `docker:17-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
