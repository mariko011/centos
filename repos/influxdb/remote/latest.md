## `influxdb:latest`

```console
$ docker pull influxdb@sha256:365d956a08e64ad38d7db9cc42766f850fc6991b2543e8bc9e878ad788259948
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90948222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2333f474b37ed51f101742f1bd55e72d434ee9b9fd5268b9b008ea96e72692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:15:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 21 Jul 2017 17:52:27 GMT
ENV INFLUXDB_VERSION=1.3.1
# Fri, 21 Jul 2017 17:52:30 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 21 Jul 2017 17:52:38 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 21 Jul 2017 17:52:39 GMT
EXPOSE 8086/tcp
# Fri, 21 Jul 2017 17:52:39 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Jul 2017 17:52:40 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 21 Jul 2017 17:52:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Jul 2017 17:52:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb93ae775fd9d6fe9c260fd0cf787707376c419d9eaa5872c471bc20ee0d1a8f`  
		Last Modified: Fri, 14 Jul 2017 21:22:34 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5782a3bebe7b50bc797ccc1747ae0b99739869d4d5d320fc6ee8739262a4b3`  
		Last Modified: Fri, 21 Jul 2017 17:54:36 GMT  
		Size: 19.1 MB (19061845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c583190e0ae4e37857b570784c900dc9c6b5d276aa43a1af55148e8ad459e`  
		Last Modified: Fri, 21 Jul 2017 17:54:31 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e21d97e5673be8ce89436bd428a0feda6112dfa25b2510fcb3b769c05881418`  
		Last Modified: Fri, 21 Jul 2017 17:54:31 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
