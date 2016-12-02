## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:4c81723856f9438baf1ee593a2ce9c43603f05a2e48ca9067df1aed7f527672d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a18f3f3ab3a56d9782fc64eba585e72f06c7c6cfdaec31c3efc00565771f9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 02 Dec 2016 20:50:44 GMT
ENV KAPACITOR_VERSION=1.1.1
# Fri, 02 Dec 2016 20:50:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 02 Dec 2016 20:50:53 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Dec 2016 20:50:53 GMT
EXPOSE 9092/tcp
# Fri, 02 Dec 2016 20:50:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Dec 2016 20:50:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 02 Dec 2016 20:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Dec 2016 20:50:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b227730d1d6ba244aa88e9c23a9b32d63b80d6c46679035805a4015a1f0358`  
		Last Modified: Fri, 02 Dec 2016 20:53:03 GMT  
		Size: 6.6 MB (6623785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd1422a5bf0c249b052d9e5d517911d3f44ff9ac9e0bc677619c899d8b9431f`  
		Last Modified: Fri, 02 Dec 2016 20:53:00 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbea94259d73fecc6f1719ed75b1df1b0a359280c91032c7ce9bb63edc5c987`  
		Last Modified: Fri, 02 Dec 2016 20:53:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
