## `aerospike:latest`

```console
$ docker pull aerospike@sha256:7c680556a38cda459413bf7365944bb0268211c40a40ab9f32bff0200bc8d4ba
```

-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74743875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c925a33d89ae484520cac8b441d5f2eca7104934661459e3c0b6c0d856eb6256`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Mon, 21 Nov 2016 17:29:34 GMT
ENV AEROSPIKE_VERSION=3.10.1
# Mon, 21 Nov 2016 17:29:34 GMT
ENV AEROSPIKE_SHA256=1b0a80ce512d1b24b71593719c96e47d8f1b4bf8322b99897ef3d1abd83a76a8
# Mon, 21 Nov 2016 17:29:56 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget openssl ca-certificates   && dpkg --purge wget ca-certificates openssl   && apt-get purge -y
# Mon, 21 Nov 2016 17:29:56 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Mon, 21 Nov 2016 17:29:57 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Mon, 21 Nov 2016 17:29:57 GMT
VOLUME [/opt/aerospike/data]
# Mon, 21 Nov 2016 17:29:58 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Mon, 21 Nov 2016 17:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 17:29:58 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cdebd6a73e8655a185e48f0f6e77f44c5809ab7da5183e584162999f0c6d6b`  
		Last Modified: Mon, 21 Nov 2016 17:30:21 GMT  
		Size: 24.7 MB (24673278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c902a3125383dfd06f19976695f408f82559d842b3bb4a78e4b71e0571e6c29e`  
		Last Modified: Mon, 21 Nov 2016 17:30:11 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00173c2bb64ed6749da50d21e64a4127c7b525ad973b4c5a7492d1742d1321da`  
		Last Modified: Mon, 21 Nov 2016 17:30:11 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
