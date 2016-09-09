## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:2b2ac8d7ff0d4b92d356f673cdd4311d54cf4b13db54825e66b7850dabc60001
```

-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

-	Docker Version: 1.9.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **440.9 MB (440880767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `d4c899c9fd8843606077432c99edac770433babc0dab7d42c880fbe0d4cc11b5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 03 May 2016 23:10:55 GMT
ADD file:b64f702c5b33d12426b57d1e25d5c6de0f2331d390d78b6dff16289914ad6098 in /
# Tue, 03 May 2016 23:11:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes
# Tue, 03 May 2016 23:11:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 03 May 2016 23:11:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 03 May 2016 23:11:04 GMT
CMD ["/bin/bash"]
# Thu, 05 May 2016 07:54:57 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 05 May 2016 07:55:08 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 05 May 2016 07:55:10 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 05 May 2016 07:56:32 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3*     && rm -rf /var/lib/apt/lists/*
# Thu, 05 May 2016 07:56:35 GMT
EXPOSE 11345/tcp
# Thu, 05 May 2016 07:56:36 GMT
COPY file:cf363986766dbc3a89db72970f261ead18c8314539e0041f16f3f35c98e6a424 in /
# Thu, 05 May 2016 07:56:36 GMT
ENTRYPOINT &{["/gzserver_entrypoint.sh"]}
# Thu, 05 May 2016 07:56:37 GMT
CMD ["gzserver"]
# Thu, 05 May 2016 07:56:38 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 05 May 2016 08:00:14 GMT
RUN apt-get update && apt-get install -q -y\
     libgazebo4-dev=4.1.3*\
     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c7b8f85f8067a94bb31a13a15602bda53c6b1d213da9b43b85711f8d44994c2b`  
		Last Modified: Fri, 06 May 2016 16:28:30 GMT  
		Size: 231.0 MB (230972400 bytes)  
		MIME: application/octet-stream
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:c2d11fc7053715b17bb3201f8b7f0e6d49b325314350828de77b8ad7c757fd0a`  
		Last Modified: Thu, 20 Aug 2015 01:38:05 GMT  
		Size: 191.0 B  
		MIME: application/octet-stream
	-	`sha256:0bc291156ed70a8f7279e0e4fe29c57876a813f447781bb7bec0fa7c9e73339d`  
		Last Modified: Fri, 06 May 2016 16:24:38 GMT  
		Size: 143.9 MB (143871085 bytes)  
		MIME: application/octet-stream
	-	`sha256:877e1219535f0fbf18cad51b5693defe3e285200ad5bcbe267354604fe471da4`  
		Last Modified: Fri, 06 May 2016 16:25:01 GMT  
		Size: 258.2 KB (258180 bytes)  
		MIME: application/octet-stream
	-	`sha256:04943db5ba6c335f810572d4123f85c613bd4faa824a4533145f3ec5f30e86f7`  
		Last Modified: Fri, 06 May 2016 16:25:05 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/octet-stream
	-	`sha256:52de432f084bc072024d55b0f483358b607d0cf46d7053e3b6aefc98beaf27bf`  
		Last Modified: Tue, 03 May 2016 23:14:32 GMT  
		Size: 680.0 B  
		MIME: application/octet-stream
	-	`sha256:f0be3084efe90c704df85e3bff8df5d858e1ff546511c8306d80de561cc18fb5`  
		Last Modified: Tue, 03 May 2016 23:14:36 GMT  
		Size: 365.0 B  
		MIME: application/octet-stream
	-	`sha256:23eda618d4513331d49c6de76aaa051919f7b57752bcd8fee3cba37f816cbafd`  
		Last Modified: Tue, 03 May 2016 23:14:39 GMT  
		Size: 71.5 KB (71481 bytes)  
		MIME: application/octet-stream
	-	`sha256:6599cadaf950a71af51aa84b85e6cdb1990287b79f8e71a78f6986b318d4c4a0`  
		Last Modified: Tue, 03 May 2016 23:15:04 GMT  
		Size: 65.7 MB (65693247 bytes)  
		MIME: application/octet-stream
