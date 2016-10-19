## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:b71ed1acdedf4b864e56aa274e19eb61d8fb2abcd6203ac6cffe69e21aa0cdd6
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10496415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5018ff4ff5ef2be7488dcfa72e299ab04eeaec07807f423ba2e6d951ab650e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:27:01 GMT
ENV TELEGRAF_VERSION=1.0.1
# Wed, 19 Oct 2016 00:27:03 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 19 Oct 2016 00:27:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 19 Oct 2016 00:27:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 19 Oct 2016 00:27:12 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 19 Oct 2016 00:27:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Oct 2016 00:27:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc62c17a7d2e79e7dadeaa76749ee6ffd0c531d400d6eee3db68d9498a4ce3`  
		Last Modified: Wed, 19 Oct 2016 00:27:23 GMT  
		Size: 344.0 KB (343994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd376fb806ff06a119ea6881afdef67bc123eab1a0170b085ba7ed70ce5d6b1c`  
		Last Modified: Wed, 19 Oct 2016 00:27:24 GMT  
		Size: 7.8 MB (7839282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6d9b810da00d64519ce0149e584947751181caeb837a2d3021fa372589c577`  
		Last Modified: Wed, 19 Oct 2016 00:27:22 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
