<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:672d519d7fd7bbc7a448d17956ebeefe225d5eb27509d8dc5ce67ecb4a0bce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:feb40d14cd33e646b9985e2d6754ed66616fedb840226c4d917ef53d616dcd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10680608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fd7d86a8257f3404f92c4474fb3353076883062d64a09232d95d940627459d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:22:37 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:22:38 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:22:38 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:22:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:22:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c692f3a6894b23bda1b90eca8816b0f91011a35c3159cf732124c4aa1c3d0e21`  
		Last Modified: Wed, 10 Jan 2018 01:23:42 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2177f3a70e81f6228f60328d21327a0df0511a69ac1468e1325c4d4ecf1e87`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d79362094727fa58c2b715ec07642562ed03c92828a9e9dea3eb95599fd9d1`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:a3a4155bb8a3b32679c10451a55f9754f33b8620c1a8f316dfd913bb91ac746d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:e547a6bd50db89612838b4acb13d74351ebb4ba84df2793b4ce903972975ad1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e3b1f8d3f1f54bb0fa747f100d34308cfef0462d9457e4babe722adc26def1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:23:17 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 10 Jan 2018 01:23:18 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:23:18 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:23:18 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:23:19 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:23:19 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2188fafff85068542cef1c792b3816c76a06f6528f19f99be9786175da1256d`  
		Last Modified: Wed, 10 Jan 2018 01:24:54 GMT  
		Size: 6.8 MB (6791691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88be16e6f1ea6ca3922d1d94b1d20bb5ddeb82a575f89cd68c966b57add75b8a`  
		Last Modified: Wed, 10 Jan 2018 01:24:53 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8f57cdc590d3157770cc2972905ce3eccb7ade19768c76b1eb35f90d41089`  
		Last Modified: Wed, 10 Jan 2018 01:24:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:a3a4155bb8a3b32679c10451a55f9754f33b8620c1a8f316dfd913bb91ac746d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:e547a6bd50db89612838b4acb13d74351ebb4ba84df2793b4ce903972975ad1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e3b1f8d3f1f54bb0fa747f100d34308cfef0462d9457e4babe722adc26def1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:23:17 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 10 Jan 2018 01:23:18 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:23:18 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:23:18 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:23:19 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:23:19 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2188fafff85068542cef1c792b3816c76a06f6528f19f99be9786175da1256d`  
		Last Modified: Wed, 10 Jan 2018 01:24:54 GMT  
		Size: 6.8 MB (6791691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88be16e6f1ea6ca3922d1d94b1d20bb5ddeb82a575f89cd68c966b57add75b8a`  
		Last Modified: Wed, 10 Jan 2018 01:24:53 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8f57cdc590d3157770cc2972905ce3eccb7ade19768c76b1eb35f90d41089`  
		Last Modified: Wed, 10 Jan 2018 01:24:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:672d519d7fd7bbc7a448d17956ebeefe225d5eb27509d8dc5ce67ecb4a0bce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:feb40d14cd33e646b9985e2d6754ed66616fedb840226c4d917ef53d616dcd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10680608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fd7d86a8257f3404f92c4474fb3353076883062d64a09232d95d940627459d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:22:37 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:22:38 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:22:38 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:22:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:22:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c692f3a6894b23bda1b90eca8816b0f91011a35c3159cf732124c4aa1c3d0e21`  
		Last Modified: Wed, 10 Jan 2018 01:23:42 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2177f3a70e81f6228f60328d21327a0df0511a69ac1468e1325c4d4ecf1e87`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d79362094727fa58c2b715ec07642562ed03c92828a9e9dea3eb95599fd9d1`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:672d519d7fd7bbc7a448d17956ebeefe225d5eb27509d8dc5ce67ecb4a0bce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:feb40d14cd33e646b9985e2d6754ed66616fedb840226c4d917ef53d616dcd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10680608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fd7d86a8257f3404f92c4474fb3353076883062d64a09232d95d940627459d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:22:37 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:22:38 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:22:38 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:22:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:22:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c692f3a6894b23bda1b90eca8816b0f91011a35c3159cf732124c4aa1c3d0e21`  
		Last Modified: Wed, 10 Jan 2018 01:23:42 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2177f3a70e81f6228f60328d21327a0df0511a69ac1468e1325c4d4ecf1e87`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d79362094727fa58c2b715ec07642562ed03c92828a9e9dea3eb95599fd9d1`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:9d295999d330eba2552f9c78c9f59828af5c9a9c15a3fbd1351df03eaad04c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:e82c444f6275eaca07889d471943668ac17fd03ea8d863289a54c199ed216332
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10680545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177391bcf8024d4db90069c89920576acd00a4eaba72e53ca0dc8e9a7501f093`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:15:40 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 01 Dec 2017 22:15:40 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 01 Dec 2017 22:15:40 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 01 Dec 2017 22:15:40 GMT
VOLUME [/var/lib/registry]
# Fri, 01 Dec 2017 22:15:41 GMT
EXPOSE 5000/tcp
# Fri, 01 Dec 2017 22:15:41 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 01 Dec 2017 22:15:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 22:15:41 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ad8919ce25eb00d53b624a38bff76ac449e8b1b1584d0a6fec21fe7cf8215b`  
		Last Modified: Fri, 01 Dec 2017 22:16:09 GMT  
		Size: 2.0 MB (2027057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5808405bc62fea22169bc92328860ef985d6b52a5ea5cfe10c2dd30d6f53526e`  
		Last Modified: Fri, 01 Dec 2017 22:16:10 GMT  
		Size: 6.3 MB (6265372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6000d7b276c974b8463bb37a179486f792a0ace665448dfa53b074b5ece0592`  
		Last Modified: Fri, 01 Dec 2017 22:16:08 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f792fdcd8ff6345cd7b98a59c2d888fc8bad127db0a6ede0a6c098100d4d2bd3`  
		Last Modified: Fri, 01 Dec 2017 22:16:08 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
