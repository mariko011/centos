## `influxdb:latest`

```console
$ docker pull influxdb@sha256:ed7a548766b36476ec69276d12217919ed62812b29cd859232d90c19abbf0b98
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87181915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646d62fcef78f6fe222bf0be636682d6c397f31aa96e38fb9b32dd5f79347d9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 00:08:54 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 28 Feb 2017 00:09:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:09:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:09:02 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:09:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:09:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:09:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:09:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df23245651af22374af5d0d0c3fe8a9bdd194c3157e1da8301ce3b9686cb4504`  
		Last Modified: Tue, 28 Feb 2017 00:42:01 GMT  
		Size: 17.3 MB (17275389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da787e78e31fba49812a61592aebae864bb6abfb6ba317ab871668417b1308`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1abfdd960faf6e99692e70b92005c79e32b52ddb1d8fcc56da4ccdb36e088f`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
