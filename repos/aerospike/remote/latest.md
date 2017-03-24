## `aerospike:latest`

```console
$ docker pull aerospike@sha256:f47c68d7cddfd6ac1972cd9885c87e26073235b40a43a78a61b30b7c25a0dd00
```

-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76525204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde8bda7d5eea54912a5fea5ae5e99c8f024cd16431de6347b136571844cbf18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Fri, 24 Mar 2017 20:15:58 GMT
ENV AEROSPIKE_VERSION=3.12.0
# Fri, 24 Mar 2017 20:15:58 GMT
ENV AEROSPIKE_SHA256=61aa3e7c0ee3adfbf0f2182a7e6a5556a4feffc20ab5aa1f93e0a25b282f3f1d
# Fri, 24 Mar 2017 20:16:40 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Fri, 24 Mar 2017 20:16:40 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Fri, 24 Mar 2017 20:16:40 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Fri, 24 Mar 2017 20:16:41 GMT
VOLUME [/opt/aerospike/data]
# Fri, 24 Mar 2017 20:16:41 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 24 Mar 2017 20:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 Mar 2017 20:16:42 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee524dc99344fe4add6b52676f4f6e24c26572cff48ea98970b4deae79912fb8`  
		Last Modified: Fri, 24 Mar 2017 20:17:32 GMT  
		Size: 26.1 MB (26093366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb429e091c0d57389ba8d546511722215503ff76eecea180a26408eebf034da`  
		Last Modified: Fri, 24 Mar 2017 20:17:24 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc14becb1ab164c67459bd913aa554adfa1e8f911ff9f494d9f7bccd21e2d3`  
		Last Modified: Fri, 24 Mar 2017 20:17:23 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
