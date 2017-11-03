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
$ docker pull registry@sha256:d837de65fd9bdb81d74055f1dc9cc9154ad5d8d5328f42f57f273000c402c76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:435db1be85c6c10b2f506516aa14d8c485c1f1bd5f4a941a637808b085f294b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07e3f32a779aa924fd47f6797d4d5c93061c50c0eb97d464f08365a3a30200b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:34 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:35 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:35 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a41740f900cbba03b223c025f03632db1284d85a696677bca8d6375cdf6040b`  
		Last Modified: Fri, 03 Nov 2017 22:34:46 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ef4b766841014d6a902f034f0f67698bcbebc1b4c36ff3574d3730e79e2ee`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f212f7c77805418cb85461d93a522c1bf4eebac73009ccd23ac2159ac33dad`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:3b4e477a15db95a9ec145caa2633f4928ef0946044e39328ff06bfabe1270e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:54a0477b240a4633ab0c2a41489838ac8702506688d6a3ac7a4333b9a2be8f1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11204310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876793cc984a70ce6c2d46b25b4e53316c54db1f379208be5afb15d4202a9e54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:38 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Fri, 03 Nov 2017 22:34:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:38 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:38 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:39 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6034cb527d0483a881f5649d155f4d4ee80c045f24055b238639836d5bb18d`  
		Last Modified: Fri, 03 Nov 2017 22:35:00 GMT  
		Size: 6.8 MB (6791690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656b93124014d3017fb7e63b81a2ea523dbe2f97b3d1db240c2e780dae1823a4`  
		Last Modified: Fri, 03 Nov 2017 22:34:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66af5bd35972e451b4f08024e592cf388733b8e6aa7c72212e06441fa8806a66`  
		Last Modified: Fri, 03 Nov 2017 22:34:58 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:3b4e477a15db95a9ec145caa2633f4928ef0946044e39328ff06bfabe1270e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:54a0477b240a4633ab0c2a41489838ac8702506688d6a3ac7a4333b9a2be8f1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11204310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876793cc984a70ce6c2d46b25b4e53316c54db1f379208be5afb15d4202a9e54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:38 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Fri, 03 Nov 2017 22:34:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:38 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:38 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:39 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6034cb527d0483a881f5649d155f4d4ee80c045f24055b238639836d5bb18d`  
		Last Modified: Fri, 03 Nov 2017 22:35:00 GMT  
		Size: 6.8 MB (6791690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656b93124014d3017fb7e63b81a2ea523dbe2f97b3d1db240c2e780dae1823a4`  
		Last Modified: Fri, 03 Nov 2017 22:34:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66af5bd35972e451b4f08024e592cf388733b8e6aa7c72212e06441fa8806a66`  
		Last Modified: Fri, 03 Nov 2017 22:34:58 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:d837de65fd9bdb81d74055f1dc9cc9154ad5d8d5328f42f57f273000c402c76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:435db1be85c6c10b2f506516aa14d8c485c1f1bd5f4a941a637808b085f294b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07e3f32a779aa924fd47f6797d4d5c93061c50c0eb97d464f08365a3a30200b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:34 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:35 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:35 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a41740f900cbba03b223c025f03632db1284d85a696677bca8d6375cdf6040b`  
		Last Modified: Fri, 03 Nov 2017 22:34:46 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ef4b766841014d6a902f034f0f67698bcbebc1b4c36ff3574d3730e79e2ee`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f212f7c77805418cb85461d93a522c1bf4eebac73009ccd23ac2159ac33dad`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:d837de65fd9bdb81d74055f1dc9cc9154ad5d8d5328f42f57f273000c402c76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:435db1be85c6c10b2f506516aa14d8c485c1f1bd5f4a941a637808b085f294b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07e3f32a779aa924fd47f6797d4d5c93061c50c0eb97d464f08365a3a30200b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:34 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:35 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:35 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a41740f900cbba03b223c025f03632db1284d85a696677bca8d6375cdf6040b`  
		Last Modified: Fri, 03 Nov 2017 22:34:46 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ef4b766841014d6a902f034f0f67698bcbebc1b4c36ff3574d3730e79e2ee`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f212f7c77805418cb85461d93a522c1bf4eebac73009ccd23ac2159ac33dad`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:d837de65fd9bdb81d74055f1dc9cc9154ad5d8d5328f42f57f273000c402c76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:435db1be85c6c10b2f506516aa14d8c485c1f1bd5f4a941a637808b085f294b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07e3f32a779aa924fd47f6797d4d5c93061c50c0eb97d464f08365a3a30200b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:34:34 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 03 Nov 2017 22:34:34 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 03 Nov 2017 22:34:34 GMT
VOLUME [/var/lib/registry]
# Fri, 03 Nov 2017 22:34:35 GMT
EXPOSE 5000/tcp
# Fri, 03 Nov 2017 22:34:35 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:34:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:34:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d43608dd22de7d12f17ae419ce146094e047e1a739d644e3fcb647f9379bdb`  
		Last Modified: Fri, 03 Nov 2017 22:34:45 GMT  
		Size: 2.0 MB (2027027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a41740f900cbba03b223c025f03632db1284d85a696677bca8d6375cdf6040b`  
		Last Modified: Fri, 03 Nov 2017 22:34:46 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ef4b766841014d6a902f034f0f67698bcbebc1b4c36ff3574d3730e79e2ee`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f212f7c77805418cb85461d93a522c1bf4eebac73009ccd23ac2159ac33dad`  
		Last Modified: Fri, 03 Nov 2017 22:34:44 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
