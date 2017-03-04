## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:e99cb54c2a935e47e85b1804d7573f9f47e330cd1b1494fe1c26662c718e8464
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7372277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524007ee90f366ac88991ed3659ac8771a520d9f8c62e29dade1f35039a2f69b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:35 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:35 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:36 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff91c3eaadab50b4d9364aaeef04afde93d6e2e820e01741942bbbbd1664513`  
		Last Modified: Sat, 04 Mar 2017 05:27:24 GMT  
		Size: 5.5 MB (5465095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63ada1098b16bb371934c4d09d02df501be90627f9f99a8b06b76df8c97f18b`  
		Last Modified: Sat, 04 Mar 2017 05:27:19 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1fac2f191671767a3262cc13d86403ac4295fadeaf0cdda7f8a7da626c6fe9`  
		Last Modified: Sat, 04 Mar 2017 05:27:18 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
