## `docker:stable`

```console
$ docker pull docker@sha256:cfeb4219968211e3a6db7258f4d7119492ef04d46b0c099bb73834a4203f638e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:d0536ef54718fc748cf84cb508a42ebe34332f49bc5214f1eb8d833556840c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b06b5bf4d4209f04752aea4c370c89c9317c9ed959e210838a68553b77057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9d92f7b3da560453d7f7707b00d67d7b96026f37d80610024c9149025b86a441
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30921369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812e192cd756e095d52f3790e60251bd14cd7e9302ef3128587398e525959f03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 26 Oct 2017 05:17:23 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 05:17:23 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 05:17:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 05:17:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:17:35 GMT
CMD ["sh"]
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
	-	`sha256:a8e9236644c562863065748fc69851a98fbb8ce471d9792b8c2972a77d1b2ad0`  
		Last Modified: Thu, 26 Oct 2017 05:24:46 GMT  
		Size: 28.7 MB (28654058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ac1fbd3e7597add248f995dd392b5e15d8431bff1c8d8884d4c4904bab61f5`  
		Last Modified: Thu, 26 Oct 2017 05:24:34 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; ppc64le

```console
$ docker pull docker@sha256:7b7a7f5d5b9848e58fbced58b4531c925f8577f74ba72ab4d57668fe1a715a16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30836184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533c30494a5345a8c2e22e8bf77a86765e1f691bc32478f2be52b08353166c8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 26 Oct 2017 05:17:11 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 05:17:13 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 05:17:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 05:17:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:17:32 GMT
CMD ["sh"]
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
	-	`sha256:a3af10324bbbaa63c84c4adc32dd1712d21b23727ce2b72cd0ac4beb37b40581`  
		Last Modified: Thu, 26 Oct 2017 05:21:21 GMT  
		Size: 28.5 MB (28472300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ccf0f36229d7d33de3e3dcf8e8687481775fc41e50ce30a5e6d667d4a38cd8`  
		Last Modified: Thu, 26 Oct 2017 05:21:12 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; s390x

```console
$ docker pull docker@sha256:fbf0d875636f01ebd83976eb32d254892286a39e02d9c989ac020b17f9b9f1de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebfb4952d33e8432233198dbbc651f99b2f054ddbab2b24fcc36b3308a31240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
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
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
