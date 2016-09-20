<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:signer-0.2.0`](#notarysigner-020)

## `notary:server`

```console
$ docker pull notary@sha256:592aa4e84fca9e73604924592c3fc5546a82eddc550accb3c597f28229dea3f4
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbfea8631105bfe52fc5c0ee7e2e40c3aacd808d1cb2e1ffb3058a981b9f0c8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:35:32 GMT
EXPOSE 4443/tcp
# Tue, 20 Sep 2016 00:35:33 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:35 GMT
WORKDIR /notary/server
# Tue, 20 Sep 2016 00:35:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:35:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:35:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 20 Sep 2016 00:35:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:35:37 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea065e460d1e55f1c55efd597ff01dbb9dc6aaef380161dbd861550a5d9231b7`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad722932bae6f3315bd840fdcefa1199757673c99881ea2fb2f03014e8bfa15`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 4.8 MB (4805120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fc94315aa2145a0e5a4d441dbac7c80ff2480f5d9e767bd19613e7009ea67`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb872c36eeebdd6d8bc9bc0aa1896db5179e77d95c2589cf47969e71397be50`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:592aa4e84fca9e73604924592c3fc5546a82eddc550accb3c597f28229dea3f4
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbfea8631105bfe52fc5c0ee7e2e40c3aacd808d1cb2e1ffb3058a981b9f0c8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:35:32 GMT
EXPOSE 4443/tcp
# Tue, 20 Sep 2016 00:35:33 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:35 GMT
WORKDIR /notary/server
# Tue, 20 Sep 2016 00:35:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:35:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:35:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 20 Sep 2016 00:35:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:35:37 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea065e460d1e55f1c55efd597ff01dbb9dc6aaef380161dbd861550a5d9231b7`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad722932bae6f3315bd840fdcefa1199757673c99881ea2fb2f03014e8bfa15`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 4.8 MB (4805120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fc94315aa2145a0e5a4d441dbac7c80ff2480f5d9e767bd19613e7009ea67`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb872c36eeebdd6d8bc9bc0aa1896db5179e77d95c2589cf47969e71397be50`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:f0a4eb7942365ab7db20e5e080b67dfeda8c3ea035f44d47aeaf450ac4532df8
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa6d24d216256d0305b2ff8b7408c530329d68c4bee1ffa0b85ff6388114ae`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:36:08 GMT
EXPOSE 4444/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
EXPOSE 7899/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:35 GMT
WORKDIR /notary/signer
# Tue, 20 Sep 2016 00:36:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:36:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:36:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 20 Sep 2016 00:36:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:36:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daabcea5601b5766d048e95ec96e4d4f04fcaf8d2e4b3ecbbf9a0bab7e581ac0`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c47d4a7a471080ed490125caf848f75780eb467cb9c0d9ac7d72d71cde11d`  
		Last Modified: Tue, 20 Sep 2016 00:36:48 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294cbb69e3ac35cb50f307963fe4474d9b4b98508836258d4310e27447506891`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb53f11647af12c028c64088cd9d9b3a640c2480897f10160eb95d8a29e5eea`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:f0a4eb7942365ab7db20e5e080b67dfeda8c3ea035f44d47aeaf450ac4532df8
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa6d24d216256d0305b2ff8b7408c530329d68c4bee1ffa0b85ff6388114ae`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:36:08 GMT
EXPOSE 4444/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
EXPOSE 7899/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:35 GMT
WORKDIR /notary/signer
# Tue, 20 Sep 2016 00:36:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:36:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:36:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 20 Sep 2016 00:36:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:36:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daabcea5601b5766d048e95ec96e4d4f04fcaf8d2e4b3ecbbf9a0bab7e581ac0`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c47d4a7a471080ed490125caf848f75780eb467cb9c0d9ac7d72d71cde11d`  
		Last Modified: Tue, 20 Sep 2016 00:36:48 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294cbb69e3ac35cb50f307963fe4474d9b4b98508836258d4310e27447506891`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb53f11647af12c028c64088cd9d9b3a640c2480897f10160eb95d8a29e5eea`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:454395517d99bef27ff9223aaf94ae91e6bd20529cde21e8020c9b18740f04e3
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8011365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715e80c2104b52d377b412ecdbb600b342a26c21cf73078a81d58a42b3a8dda8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:35:32 GMT
EXPOSE 4443/tcp
# Tue, 20 Sep 2016 00:35:33 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:06 GMT
WORKDIR /notary/server
# Tue, 20 Sep 2016 00:37:07 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:37:08 GMT
USER [notary]
# Tue, 20 Sep 2016 00:37:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 20 Sep 2016 00:37:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:37:09 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea065e460d1e55f1c55efd597ff01dbb9dc6aaef380161dbd861550a5d9231b7`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9221c5ebe164ae9dd3f4e2c31279ba1256d8120c21f293be863f786af482ec`  
		Last Modified: Tue, 20 Sep 2016 00:37:20 GMT  
		Size: 5.7 MB (5698316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dcbcbcad188e6f8a374684eccdc42516045adae52ea2c0af156f12861bfdae`  
		Last Modified: Tue, 20 Sep 2016 00:37:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4c417cfa793fae2d9782b03ae9cecb9e0d3958e902b3d6ae78c8483cdc5c40`  
		Last Modified: Tue, 20 Sep 2016 00:37:18 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:7c60fc0f03a034ceedf92a6033647e29f8a52f481dc3e56e6acfab35d0342c47
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7778087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb3a0b3f99ee143afc739faf0058adf5d364112ea657cad25daa05c167ce40a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:36:08 GMT
EXPOSE 4444/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
EXPOSE 7899/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:10 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:11 GMT
WORKDIR /notary/signer
# Tue, 20 Sep 2016 00:36:12 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:36:13 GMT
USER [notary]
# Tue, 20 Sep 2016 00:36:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 20 Sep 2016 00:36:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:36:14 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daabcea5601b5766d048e95ec96e4d4f04fcaf8d2e4b3ecbbf9a0bab7e581ac0`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63591b648a8010cde0b041988ed097a8591cb4329174693d6d133e6f1a949ed`  
		Last Modified: Tue, 20 Sep 2016 00:36:25 GMT  
		Size: 5.5 MB (5465106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b00ac5a125c75cd0d385dcb37e81f44be828d04f5b2f042badedc58bfb005`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e43c1bacfa26ff9922611e30fa9134e12bc4faad98e24814ac7527c94eef63`  
		Last Modified: Tue, 20 Sep 2016 00:36:21 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
