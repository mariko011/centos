## `influxdb:latest`

```console
$ docker pull influxdb@sha256:3ebb11cf7bb1a2802cf4a2682fece9005609d6b7be263de2f700788baab239a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90983805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3294b3c9db170e6e47ccfee87a4b2dce367425151f66b1a6e33bdc4a898bdd76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Aug 2017 19:31:38 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 30 Aug 2017 19:31:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:42 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56143bb22a3a7b9ca6c1fbe97205a12e6a499dfff438ad169e6dacbe24674852`  
		Last Modified: Wed, 30 Aug 2017 19:32:08 GMT  
		Size: 19.1 MB (19106491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd657af397167f9454f6efe78153ada05d7ae3fe6193cce1c75d1908a8065ae4`  
		Last Modified: Wed, 30 Aug 2017 19:32:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9261f27c9a77442d07a9bf9cde1b52469e701faa0488481d7a32f5cb137bb6`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315bdf0ddbb092647be6d409a48e66c1c12c93e603f757493c9f920120d4580c`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
