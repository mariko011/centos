## `docker:edge-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
