## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0a89279dbe0da0d5dbfeb2bffebcfe085189f7ca953a68c63b52038ae7dabead
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10184644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6dbeb39e771eed4b7da3905ecbd00011a0cfc5fabdabdcb961f2f9543530f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:27:52 GMT
ENV KAPACITOR_VERSION=1.0.0
# Tue, 20 Sep 2016 00:28:02 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:28:03 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Tue, 20 Sep 2016 00:28:04 GMT
EXPOSE 9092/tcp
# Tue, 20 Sep 2016 00:28:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 20 Sep 2016 00:28:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:28:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab98bed6b78b06a314db360c379bd460cab0505f6578b2c3bd477391e3f483a`  
		Last Modified: Tue, 20 Sep 2016 00:28:18 GMT  
		Size: 7.9 MB (7873146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eeaf7e9f3ab8ff00ded41d185b8328e8b3c9774625e11c7af07d7d76418c552`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52088b01f98a707ddc49fe620a1337a04ef3655ff68d8caa96ef9b558264de35`  
		Last Modified: Tue, 20 Sep 2016 00:28:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
