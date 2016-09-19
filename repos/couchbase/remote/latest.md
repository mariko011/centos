## `couchbase:latest`

```console
$ docker pull couchbase@sha256:e25a20a9c0c30ffdd9e81279bc6553d1431b857728fe5886cf110c7e163eef82
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208003305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4606a18f237de4f51976d7d6b63f7dd7a17c39cd931dac30b9f13e39bef31ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:17:24 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:17:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:17:52 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:17:54 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:17:57 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:17:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:17:59 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:17:59 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:17:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfeff25a5e92be0b15671fbfce8711fe2a6827e33c34004e80288e925c1fc4`  
		Last Modified: Mon, 19 Sep 2016 17:18:08 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f00cc892cad6c9ffad15c44e3354e78673d3226a40d21b72a25937f2c32d9d`  
		Last Modified: Mon, 19 Sep 2016 17:18:44 GMT  
		Size: 130.9 MB (130872047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3b27c9bd20a6bc24707e7bcbdf61fbad78c6fce8b5b61a9d4e66408e42f58`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523e409a642f40bd57bae94dd77551d1b110f1b28219a8b8a54e02408a394d61`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3dacf1d684781f8eff388fb7d92efca9a9f91576738bf133b3397eda56d`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a6845de6e88005ebdd09d0c5913aa1ccbfff5e26ae589c3288f0c3fb8db845`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b35e46e954ee43750a99d97e1cc4ac9ac053a07accfdcea79b430ea2eb0dd55`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
