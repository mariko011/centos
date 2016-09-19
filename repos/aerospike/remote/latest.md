## `aerospike:latest`

```console
$ docker pull aerospike@sha256:eeb90898ceeb7c14a39c54b3414c532fba791a577e03041d2b1fb2fa81747fd8
```

-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68054898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f858b45d8c1f318a5c4e45b422c8a8898acbecfcedef478ac4346e05cf6f93ea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:07:03 GMT
ENV AEROSPIKE_VERSION=3.9.1.1
# Mon, 19 Sep 2016 17:07:04 GMT
ENV AEROSPIKE_SHA256=05d049f83a1fce9d4acc6ad6f1fbbe86af2dfb462d47eafbfae1ae4dbbb943c1
# Mon, 19 Sep 2016 17:07:22 GMT
RUN apt-get update -y   && apt-get install -y wget python logrotate ca-certificates   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r openssl ca-certificates   && dpkg --purge openssl ca-certificates
# Mon, 19 Sep 2016 17:07:23 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Mon, 19 Sep 2016 17:07:23 GMT
COPY file:ae9470d86ba973bb1d9911d608b000e6da810777ec7bb4e93d778fdbdeae4501 in /entrypoint.sh 
# Mon, 19 Sep 2016 17:07:24 GMT
VOLUME [/opt/aerospike/data]
# Mon, 19 Sep 2016 17:07:24 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Mon, 19 Sep 2016 17:07:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:07:24 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde8a99e4d7ac5e667269c7fc5bcafb731e4b12b582dc39062953237c7b2eaa`  
		Last Modified: Mon, 19 Sep 2016 17:07:38 GMT  
		Size: 18.3 MB (18256692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3d662111fe227eb58287268f6c60181140b3ac72c4c3caf9e769b66b168558`  
		Last Modified: Mon, 19 Sep 2016 17:07:31 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67958cdb2af244d6e55c58f4591a571af893a8745f568c3303b8b270a24a98b3`  
		Last Modified: Mon, 19 Sep 2016 17:07:31 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
