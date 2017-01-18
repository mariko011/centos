<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.0`](#kapacitor10)
-	[`kapacitor:1.0.2`](#kapacitor102)
-	[`kapacitor:1.0-alpine`](#kapacitor10-alpine)
-	[`kapacitor:1.0.2-alpine`](#kapacitor102-alpine)
-	[`kapacitor:1.1`](#kapacitor11)
-	[`kapacitor:1.1.1`](#kapacitor111)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.1-alpine`](#kapacitor11-alpine)
-	[`kapacitor:1.1.1-alpine`](#kapacitor111-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:1.2.0-rc1`](#kapacitor120-rc1)
-	[`kapacitor:1.2.0-rc1-alpine`](#kapacitor120-rc1-alpine)

## `kapacitor:1.0`

```console
$ docker pull kapacitor@sha256:d45e8eb0b4002bdc47e51e8aa18d40ae2a62775ae867d1e98fe88c529c1034e8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80730394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1815313d2e464a5f0865459ab29da97d3b512a1e07a423bbbc6c172f5525b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:13:56 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 17 Jan 2017 17:14:01 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:02 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:02 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:03 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:03 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b0bb878a8c34c7adf51210063d9656a0dcb933e62b72e588c93b158e5a5d1b`  
		Last Modified: Wed, 18 Jan 2017 04:21:35 GMT  
		Size: 10.8 MB (10826543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd7d493e5ae83c46a636b0d7404a8d98803466dd32d5021c62af7d7a6803a31`  
		Last Modified: Wed, 18 Jan 2017 04:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf392b18f56eef4a0c5615949d66759a47879e22230cd3e65051aef3f88544`  
		Last Modified: Wed, 18 Jan 2017 04:21:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2`

```console
$ docker pull kapacitor@sha256:d45e8eb0b4002bdc47e51e8aa18d40ae2a62775ae867d1e98fe88c529c1034e8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80730394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1815313d2e464a5f0865459ab29da97d3b512a1e07a423bbbc6c172f5525b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:13:56 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 17 Jan 2017 17:14:01 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:02 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:02 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:03 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:03 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b0bb878a8c34c7adf51210063d9656a0dcb933e62b72e588c93b158e5a5d1b`  
		Last Modified: Wed, 18 Jan 2017 04:21:35 GMT  
		Size: 10.8 MB (10826543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd7d493e5ae83c46a636b0d7404a8d98803466dd32d5021c62af7d7a6803a31`  
		Last Modified: Wed, 18 Jan 2017 04:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf392b18f56eef4a0c5615949d66759a47879e22230cd3e65051aef3f88544`  
		Last Modified: Wed, 18 Jan 2017 04:21:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0-alpine`

```console
$ docker pull kapacitor@sha256:0ba69cb9dceb92caa59bb4137908537a9e1afc9c1f920a8e7bc4d7f571fef7bf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270ed1e5d1f5c8786df5093470f6f5f23daba2c2f9bb239a38e4ee39e0dd10f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:17 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 27 Dec 2016 19:16:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:25 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:26 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:26 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:27 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1b77cbdff18699401a1b21d0058e77324c2d5a8692f49392860c786187a358`  
		Last Modified: Tue, 27 Dec 2016 19:20:13 GMT  
		Size: 7.9 MB (7919093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548c84a7d255004943effc44af85ffbebd877ac626c64c4904cde1fbc75d5506`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a06f23076ef480f357f6cd796c7c09fe1256ad37aded3917b49560145c49a5`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.0.2-alpine`

```console
$ docker pull kapacitor@sha256:0ba69cb9dceb92caa59bb4137908537a9e1afc9c1f920a8e7bc4d7f571fef7bf
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270ed1e5d1f5c8786df5093470f6f5f23daba2c2f9bb239a38e4ee39e0dd10f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:17 GMT
ENV KAPACITOR_VERSION=1.0.2
# Tue, 27 Dec 2016 19:16:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:25 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:26 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:26 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:27 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1b77cbdff18699401a1b21d0058e77324c2d5a8692f49392860c786187a358`  
		Last Modified: Tue, 27 Dec 2016 19:20:13 GMT  
		Size: 7.9 MB (7919093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548c84a7d255004943effc44af85ffbebd877ac626c64c4904cde1fbc75d5506`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a06f23076ef480f357f6cd796c7c09fe1256ad37aded3917b49560145c49a5`  
		Last Modified: Tue, 27 Dec 2016 19:20:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1`

```console
$ docker pull kapacitor@sha256:37c21923bd2860def0a7a165849bb9deb02f6c3d87e632fd31b2839c5677825c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79513202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aff455316ae6ebbdbd4304f65f0328cf446889ae6dda76cd206fe410aed821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:14:04 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 17 Jan 2017 17:14:09 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640551271156769fd336a7eb175ec9a38d57bdc62ed78c1ceb0d181e91d26cf0`  
		Last Modified: Wed, 18 Jan 2017 04:22:12 GMT  
		Size: 9.6 MB (9609345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf520a17ecf3d7e521a15224ddaf1f90d2104c9332e2d3823af91c67a88bc26`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c263d3b7b135af51c0d8a1024673648311adec6cc95c5a002cc8626042b3e9a`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1`

```console
$ docker pull kapacitor@sha256:37c21923bd2860def0a7a165849bb9deb02f6c3d87e632fd31b2839c5677825c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79513202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aff455316ae6ebbdbd4304f65f0328cf446889ae6dda76cd206fe410aed821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:14:04 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 17 Jan 2017 17:14:09 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640551271156769fd336a7eb175ec9a38d57bdc62ed78c1ceb0d181e91d26cf0`  
		Last Modified: Wed, 18 Jan 2017 04:22:12 GMT  
		Size: 9.6 MB (9609345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf520a17ecf3d7e521a15224ddaf1f90d2104c9332e2d3823af91c67a88bc26`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c263d3b7b135af51c0d8a1024673648311adec6cc95c5a002cc8626042b3e9a`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:37c21923bd2860def0a7a165849bb9deb02f6c3d87e632fd31b2839c5677825c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79513202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aff455316ae6ebbdbd4304f65f0328cf446889ae6dda76cd206fe410aed821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:14:04 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 17 Jan 2017 17:14:09 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640551271156769fd336a7eb175ec9a38d57bdc62ed78c1ceb0d181e91d26cf0`  
		Last Modified: Wed, 18 Jan 2017 04:22:12 GMT  
		Size: 9.6 MB (9609345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf520a17ecf3d7e521a15224ddaf1f90d2104c9332e2d3823af91c67a88bc26`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c263d3b7b135af51c0d8a1024673648311adec6cc95c5a002cc8626042b3e9a`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1-alpine`

```console
$ docker pull kapacitor@sha256:8baef7c5ef8058853937b255d4a053a18a3dc089aabd4964cf60d0577efb4cd9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c72cde0253390aa8e3ee0d2cc0ae64c20d430df3a287737afa569ae123c352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:13 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 13 Jan 2017 20:14:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:23 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336482b7efa0c72fada04887f9076ac9acb0a3bc99c503df8d076964b0be4ddc`  
		Last Modified: Fri, 13 Jan 2017 20:16:33 GMT  
		Size: 6.6 MB (6623094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d18ad50acf1cfb57581a9cb43dffda6085d5c7123507de436afed1a018d3cd2`  
		Last Modified: Fri, 13 Jan 2017 20:16:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d62746455930b8904814b7b5da7965cf1e9c3be9784f8912792c942da5ef3b1`  
		Last Modified: Fri, 13 Jan 2017 20:16:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1-alpine`

```console
$ docker pull kapacitor@sha256:8baef7c5ef8058853937b255d4a053a18a3dc089aabd4964cf60d0577efb4cd9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c72cde0253390aa8e3ee0d2cc0ae64c20d430df3a287737afa569ae123c352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:13 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 13 Jan 2017 20:14:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:23 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336482b7efa0c72fada04887f9076ac9acb0a3bc99c503df8d076964b0be4ddc`  
		Last Modified: Fri, 13 Jan 2017 20:16:33 GMT  
		Size: 6.6 MB (6623094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d18ad50acf1cfb57581a9cb43dffda6085d5c7123507de436afed1a018d3cd2`  
		Last Modified: Fri, 13 Jan 2017 20:16:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d62746455930b8904814b7b5da7965cf1e9c3be9784f8912792c942da5ef3b1`  
		Last Modified: Fri, 13 Jan 2017 20:16:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:8baef7c5ef8058853937b255d4a053a18a3dc089aabd4964cf60d0577efb4cd9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c72cde0253390aa8e3ee0d2cc0ae64c20d430df3a287737afa569ae123c352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:13 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 13 Jan 2017 20:14:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:23 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:24 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336482b7efa0c72fada04887f9076ac9acb0a3bc99c503df8d076964b0be4ddc`  
		Last Modified: Fri, 13 Jan 2017 20:16:33 GMT  
		Size: 6.6 MB (6623094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d18ad50acf1cfb57581a9cb43dffda6085d5c7123507de436afed1a018d3cd2`  
		Last Modified: Fri, 13 Jan 2017 20:16:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d62746455930b8904814b7b5da7965cf1e9c3be9784f8912792c942da5ef3b1`  
		Last Modified: Fri, 13 Jan 2017 20:16:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.0-rc1`

```console
$ docker pull kapacitor@sha256:73c2381c8da44db9aabf8cd80732541d835cd7df354e89c367c48a1d96f607ad
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.0-rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79972953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d40756ecd0ea1145f56dd8d64b34cb166d5ca2803eccd5ccaf8b3c0b3e641b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:14:12 GMT
ENV KAPACITOR_VERSION=1.2.0~rc1
# Tue, 17 Jan 2017 17:14:17 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:18 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:18 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:18 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94f3ca2d2d95350206bc65a12f73959274557b68e6f18a9da61e3ced4d29470`  
		Last Modified: Wed, 18 Jan 2017 04:23:05 GMT  
		Size: 10.1 MB (10069097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e0ae402d9025c9618bdfa96384ecbd917801cdf613fd3d0ac43392a6a20caa`  
		Last Modified: Wed, 18 Jan 2017 04:23:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d245cdc9fd563a2630c4ef2ff30fd9c36987fcec9312cad187cedbef3f6c9ed6`  
		Last Modified: Wed, 18 Jan 2017 04:23:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.0-rc1-alpine`

```console
$ docker pull kapacitor@sha256:7f00e8a59cd3e3dccefcf738c45794bc7440e4e34030ad5588490255add1e86f
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8853979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffcfaf30f79ddc82b599819ba4b238915efa48f42ca4791b24372d815f3867a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:14:25 GMT
ENV KAPACITOR_VERSION=1.2.0~rc1
# Fri, 13 Jan 2017 20:14:34 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:14:35 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 13 Jan 2017 20:14:35 GMT
EXPOSE 9092/tcp
# Fri, 13 Jan 2017 20:14:36 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 13 Jan 2017 20:14:36 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:14:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb51e3a18dc60107e18988458008ef582285f06570d7ca0f613979558f80d08`  
		Last Modified: Fri, 13 Jan 2017 20:17:36 GMT  
		Size: 7.0 MB (6951463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa418f3ed79b836e3d6a3b4f3d6ed6f8b0252666030a8babd8ab8fa0bd242a7`  
		Last Modified: Fri, 13 Jan 2017 20:17:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cccab7949f970111d71ade04c721a117d26c78e9b9c5305b2828007b2953679`  
		Last Modified: Fri, 13 Jan 2017 20:17:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
