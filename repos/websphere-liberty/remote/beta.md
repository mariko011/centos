## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:b4a2f7a49b0a89bad6305e9413a4f80bbfe5e0814aa5b1ca01b3b3a21f5a65b7
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260511201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4426719b79d0f383d6a057d27b19830ef3dab4ba1d668cf6218e957bfc8fb1fc`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:56 GMT
ADD file:96db69a1ba6c80f604d07b14bcbf84445624ad3eb5b0471eddabf09cb7925366 in / 
# Thu, 20 Jul 2017 17:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 19:59:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 20 Jul 2017 19:59:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 19:59:38 GMT
ENV JAVA_VERSION=1.8.0_sr4fp7
# Thu, 20 Jul 2017 20:00:12 GMT
RUN ESUM="431f94a4f51c1f53d5a6e62fce3c65f16e955acd772554d17e0d864416d7ba05"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 20 Jul 2017 20:00:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jul 2017 21:41:52 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 20 Jul 2017 21:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 21:42:03 GMT
ENV LIBERTY_VERSION=2017.7.0_0
# Thu, 20 Jul 2017 21:42:13 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 20 Jul 2017 21:42:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jul 2017 21:42:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 20 Jul 2017 21:42:15 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 20 Jul 2017 21:42:20 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 20 Jul 2017 21:42:20 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Thu, 20 Jul 2017 21:42:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Jul 2017 21:42:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e0a742c2abfd5e2a6f8ed15b1c78e873cf9559b96a04204daf6de5df01e3124c`  
		Last Modified: Tue, 11 Jul 2017 06:39:41 GMT  
		Size: 47.1 MB (47146626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486cb8339a27635fa93dc47aa0c689326a0a7cce388966d16daf8d265436cf7f`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0d824617ad8a5d1163a5b2084814665dd83156317ad06ccf14deb517a053`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a5649a30e3f318ce5d7e4dbcbbeb6c0938c4cbae4d4a641fe910562ff4978`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672363445ad2c734e29221a6b47f4e614b5adc8a3cdca3364f62db2ed2bdff0c`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523732d45995bd7a1c0829224b3537591de2266067520323f290d73a09d1c293`  
		Last Modified: Thu, 20 Jul 2017 20:03:07 GMT  
		Size: 3.1 MB (3070068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c7da86159e074a7db3df6561a8586231d7f847246049e8c97ad019d040b07`  
		Last Modified: Thu, 20 Jul 2017 20:03:18 GMT  
		Size: 110.9 MB (110885826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e267722ec9cd3924ecaf03d2c0064911a2a851454153a305a5b483ae34d542`  
		Last Modified: Thu, 20 Jul 2017 21:45:45 GMT  
		Size: 269.7 KB (269655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd7d1f9232dd56297079b09538702ff66f0186951b417625c9d41b556f4533f`  
		Last Modified: Thu, 20 Jul 2017 21:45:54 GMT  
		Size: 99.1 MB (99134123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3798d36b82707059b6ae464a5edc661efc683b24dbc17c5d1e10fc31713bf357`  
		Last Modified: Thu, 20 Jul 2017 21:45:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2382b283afca7cf982bdbd5dbb542345a72e914e764e8df22958153d2aa1cc6`  
		Last Modified: Thu, 20 Jul 2017 21:45:46 GMT  
		Size: 2.0 KB (1986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f480d63e7b6ae92b764fb959b4e91291dc382688f2b753a2a09a2b65d3a77`  
		Last Modified: Thu, 20 Jul 2017 21:45:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
