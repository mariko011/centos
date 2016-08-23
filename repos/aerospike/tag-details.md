<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.9.1`](#aerospike391)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.9.1`

```console
$ docker pull aerospike@sha256:152af809c834879833f0403cded1803142a156a746438f4a472c89065c4319fe
```

-	Platforms:
	-	linux; amd64

### `aerospike:3.9.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68841966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f82fe12d77f2747b22fc76b6a07ee47c8748a00f9545437613294f3fb613c3b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:19:57 GMT
ENV AEROSPIKE_VERSION=3.9.1
# Tue, 23 Aug 2016 18:19:58 GMT
ENV AEROSPIKE_SHA256=7bb3236d478559cc19658b87cb5877aa023dba7d5dd788c89b7cf75cad3fdf89
# Tue, 23 Aug 2016 18:20:29 GMT
RUN apt-get update -y   &&  apt-get install -y wget python logrotate ca-certificates   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:20:33 GMT
COPY file:59f374b27ea4d0d2d9576cccc7c2a2a8893a36c2b0498759af9fde54286c59e8 in /etc/aerospike/aerospike.conf
# Tue, 23 Aug 2016 18:20:34 GMT
COPY file:ae9470d86ba973bb1d9911d608b000e6da810777ec7bb4e93d778fdbdeae4501 in /entrypoint.sh
# Tue, 23 Aug 2016 18:20:35 GMT
VOLUME [/opt/aerospike/data]
# Tue, 23 Aug 2016 18:20:36 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 23 Aug 2016 18:20:37 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:20:38 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82ef8620c3d3d454ab108c29c9c0ed69c7c3811ea52c46a6b2f96b27951864d`  
		Last Modified: Tue, 23 Aug 2016 18:20:55 GMT  
		Size: 19.2 MB (19160072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc44fc4fb2358d803c66aec18558c3df93bf0f3d4dcb7045617a8a9a9f487b4f`  
		Last Modified: Tue, 23 Aug 2016 18:20:49 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63c54111c2b8b5a0099a7d9a99018dc236e32e4ed18d5a2664448ad4347599`  
		Last Modified: Tue, 23 Aug 2016 18:20:50 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:152af809c834879833f0403cded1803142a156a746438f4a472c89065c4319fe
```

-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68841966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f82fe12d77f2747b22fc76b6a07ee47c8748a00f9545437613294f3fb613c3b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:19:57 GMT
ENV AEROSPIKE_VERSION=3.9.1
# Tue, 23 Aug 2016 18:19:58 GMT
ENV AEROSPIKE_SHA256=7bb3236d478559cc19658b87cb5877aa023dba7d5dd788c89b7cf75cad3fdf89
# Tue, 23 Aug 2016 18:20:29 GMT
RUN apt-get update -y   &&  apt-get install -y wget python logrotate ca-certificates   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:20:33 GMT
COPY file:59f374b27ea4d0d2d9576cccc7c2a2a8893a36c2b0498759af9fde54286c59e8 in /etc/aerospike/aerospike.conf
# Tue, 23 Aug 2016 18:20:34 GMT
COPY file:ae9470d86ba973bb1d9911d608b000e6da810777ec7bb4e93d778fdbdeae4501 in /entrypoint.sh
# Tue, 23 Aug 2016 18:20:35 GMT
VOLUME [/opt/aerospike/data]
# Tue, 23 Aug 2016 18:20:36 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 23 Aug 2016 18:20:37 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 18:20:38 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82ef8620c3d3d454ab108c29c9c0ed69c7c3811ea52c46a6b2f96b27951864d`  
		Last Modified: Tue, 23 Aug 2016 18:20:55 GMT  
		Size: 19.2 MB (19160072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc44fc4fb2358d803c66aec18558c3df93bf0f3d4dcb7045617a8a9a9f487b4f`  
		Last Modified: Tue, 23 Aug 2016 18:20:49 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63c54111c2b8b5a0099a7d9a99018dc236e32e4ed18d5a2664448ad4347599`  
		Last Modified: Tue, 23 Aug 2016 18:20:50 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
