## `notary:server`

```console
$ docker pull notary@sha256:94a310798af7743a02a73c3830119677140552d780ba7b7094395ec5a78cfce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:0116ae09dcc8903669c94d28ce8a92f2f6f46624043acc9338ca0842e45fd969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb91d62d0ed6a6aceacb9c9649370c39c0ff21f32a9195ac79795202413e938`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:01:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Thu, 26 Oct 2017 01:01:59 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:02:01 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:02:02 GMT
USER [notary]
# Thu, 26 Oct 2017 01:02:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:02:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:02:03 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d51306b8ebda3caf546ccbd850264d5a83823ec01107a6642d6324d2c6a6d0`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b095f47f45b5f4cf18c4e8e97cb43519fb066023c0595edf5f080b7a3eb9b03`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0fb764b777f53973bb49ec84c7e8ad749e8bf95c68691b977adac6e7ae599`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6548d779fe1de70612b5ebc8ba443b5fb2c36514cc7d6779a4628d0112ca73`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
