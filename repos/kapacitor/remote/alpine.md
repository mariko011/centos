## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0b3f847499648f66405ed1cd162d85e3c4467f1d6cbd28239e5507f834a96536
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8862070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a88dbbc4927c8f90d689953eecd274296807d946f7a82e0737e81cf6123141`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:44 GMT
ENV KAPACITOR_VERSION=1.2.0
# Fri, 03 Mar 2017 22:01:51 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 22:01:51 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Mar 2017 22:01:52 GMT
EXPOSE 9092/tcp
# Fri, 03 Mar 2017 22:01:52 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Mar 2017 22:01:52 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Mar 2017 22:01:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 22:01:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb56e094c338b2b0da3ddd5e78ea15b665f7b620ebb1511ea081edaab3e703c`  
		Last Modified: Sat, 04 Mar 2017 05:11:36 GMT  
		Size: 7.0 MB (6956350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ba9933f7af6c582ebdba15a2816c27decfcdd37e4878a020e5b385d66626c7`  
		Last Modified: Sat, 04 Mar 2017 05:11:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985820c1548b87f5f0a60230c1d1982bb443f5fa45f7a75e32226538dbf0303`  
		Last Modified: Sat, 04 Mar 2017 05:11:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
