## `gazebo:latest`

```console
$ docker pull gazebo@sha256:bc11bc000373704829df302ee3e134e167e14f63c041dadad62dc44aef5d3e7d
```

-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474784473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba645fbf89cf6f93a64a3a9b5d2b9c42715f988caeaa40af3c1b45dd2074dd6e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 08 Jun 2016 20:31:06 GMT
ADD file:cd748aa6f0d26a270cc30a0a6ba5ce74dbabb758bf0d9381c1ce96c9f1c9b4cd in /
# Wed, 08 Jun 2016 20:31:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes
# Wed, 08 Jun 2016 20:31:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 08 Jun 2016 20:31:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 08 Jun 2016 20:31:10 GMT
CMD ["/bin/bash"]
# Wed, 08 Jun 2016 22:29:24 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Wed, 08 Jun 2016 22:29:42 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 08 Jun 2016 22:29:43 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 08 Jun 2016 22:51:35 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.1.0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 Jun 2016 22:51:35 GMT
EXPOSE 11345/tcp
# Wed, 08 Jun 2016 22:51:35 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in /
# Wed, 08 Jun 2016 22:51:36 GMT
ENTRYPOINT &{["/gzserver_entrypoint.sh"]}
# Wed, 08 Jun 2016 22:51:36 GMT
CMD ["gzserver"]
# Wed, 08 Jun 2016 22:51:36 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Wed, 08 Jun 2016 22:55:54 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.1.0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c953ac5d795ea26fd59dc5bdf4d335625c69f8bcfbdd8307d6009c2e61779c9`  
		Last Modified: Thu, 26 May 2016 23:13:36 GMT  
		Size: 65.7 MB (65699277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77235a0a1ffe0dc9290f5a3322734834f6181c3cb422885e7edd8403db1a30`  
		Last Modified: Thu, 09 Jun 2016 21:54:04 GMT  
		Size: 101.4 KB (101391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a069390c20edbbe3147b9dc9c1335d24ab87b373a6136837e487ac0a76c3aef`  
		Last Modified: Thu, 09 Jun 2016 21:54:04 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325d7f72769235249695c56cc250ff910f1d11ed1cdcc27578445608f6ede3e9`  
		Last Modified: Thu, 09 Jun 2016 21:54:04 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185d246ae22d64a199724307330c2255dd848af815545e1e39af2f7f93684bda`  
		Last Modified: Fri, 24 Jun 2016 18:36:49 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e874e9eaffc949a102449d81ab10ba052033f165cf5d35d250d48c352482f734`  
		Last Modified: Fri, 24 Jun 2016 18:36:52 GMT  
		Size: 258.2 KB (258202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1442f78b338ff26be7a912cb34c5b5941b1a51733ce847b144b66d8ee19242`  
		Last Modified: Fri, 24 Jun 2016 18:39:40 GMT  
		Size: 179.0 MB (178991599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358b3a15bb75aaf308f13f1ed496d2952ae3539e3ba7119fda0cd218ffad1471`  
		Last Modified: Fri, 24 Jun 2016 18:38:45 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ec3e602a7ce6cc72756b48b51a7c4c234611f58ec4b2ad63b8f4834a95d55`  
		Last Modified: Fri, 24 Jun 2016 18:40:13 GMT  
		Size: 229.7 MB (229719660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
