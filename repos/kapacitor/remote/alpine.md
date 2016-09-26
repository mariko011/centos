## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:a1f6c05db23763ecbe23b61aded2f9ab5fde62e288cf2808a8b8a8d528ddbe37
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10232184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a8361aba259e94934884b511e89b0e3734957e0e6ff10fb5a2fabf3a37fa17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Mon, 26 Sep 2016 21:31:44 GMT
ENV KAPACITOR_VERSION=1.0.1
# Mon, 26 Sep 2016 21:31:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 26 Sep 2016 21:31:58 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Mon, 26 Sep 2016 21:31:59 GMT
EXPOSE 9092/tcp
# Mon, 26 Sep 2016 21:31:59 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Sep 2016 21:32:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 26 Sep 2016 21:32:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Sep 2016 21:32:00 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe8a6938e090de4ee924268180c93a43efdf636bca877ce8fa29f69dc2f12d0`  
		Last Modified: Mon, 26 Sep 2016 21:33:52 GMT  
		Size: 7.9 MB (7918812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4cf1eee9ee4e9f42f8c6552e1828efab0c0fbcd633c8a883a74a09bde62bec`  
		Last Modified: Mon, 26 Sep 2016 21:33:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e91709d40795cfb1f0a3f01557c7daf5e19bfc1f5cff49c9b0625a8888f75ff`  
		Last Modified: Mon, 26 Sep 2016 21:33:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
