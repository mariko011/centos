## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:b16a9256c1e64a8efdb9e6b0612d8f80a811fdfeba9590f2ddbb305658932a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:1c041b1037654c4f04471ef391b284d12141fcf66a64a1d3924ac281e519868f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2166428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ef861214621c975dd61c41dcf91cedf001ad54345b9540fcab00c9c0c85475`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:36:37 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Thu, 26 Oct 2017 03:36:37 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Thu, 26 Oct 2017 03:36:40 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Thu, 26 Oct 2017 03:36:40 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Thu, 26 Oct 2017 03:36:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:36:41 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729c6f698b7aec2b632f5eec960a611efe4ae1d2c1e0fb8260afbc4cd1092a47`  
		Last Modified: Thu, 26 Oct 2017 03:36:53 GMT  
		Size: 174.8 KB (174846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf07d1b0cd91768ba7797e5a5c303aa331fbd3d3ff8aaa2a45057c71322512a7`  
		Last Modified: Thu, 26 Oct 2017 03:36:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
