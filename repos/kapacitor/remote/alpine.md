## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:9f8bfdec40fe558a5ad70558e8df86637da5d0cb18a57bb10c0165d8a1bfad6d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8937279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0611c744ed2f710fdf8533d1d247db745ff7842f2031ea5178e6b0ff407b3e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:16:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 27 Dec 2016 19:16:36 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:16:46 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 27 Dec 2016 19:16:46 GMT
EXPOSE 9092/tcp
# Tue, 27 Dec 2016 19:16:46 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Dec 2016 19:16:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:16:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:16:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a6692e522ab1db29c13dd4abb7b997db0ca5ba69fb56266f301ece471f88e7`  
		Last Modified: Tue, 27 Dec 2016 19:20:58 GMT  
		Size: 6.6 MB (6623738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e243b5da1c300ec41160b56bae76247ea04802efc529b531fbc085d4989`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f84b546f03c435815edc11b843a117409080f9a2e2b0bc64eab65e32ceae5e`  
		Last Modified: Tue, 27 Dec 2016 19:20:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
