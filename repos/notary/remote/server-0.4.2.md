## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:303eda1f15115f338f5f11c90532ccc860216e3a789957d1d29b9c1035c744b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:162a5b5f5ccc84b8260ba0ec75b2fbc2a5653e2f7c743691524e40a9664572eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5935002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b945b0579d82f887f3d52356fe51e0a9a9ce85c26f429a128ce9bd4737907cc`
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
# Thu, 26 Oct 2017 01:09:59 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Thu, 26 Oct 2017 01:09:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:09:59 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:10:00 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:00 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:10:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:01 GMT
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
	-	`sha256:9294e39c47283ba81ab371ba5488e4cf7326ad80749df7bf719fc5418dd02e23`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 3.9 MB (3941585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d83c6c22d5a665dc3ee2cf57477924e2c930e267d3ec53c7db5bc40011a3a`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30c4f01217c677076376d695a5c177f5b20859e0d0bcefde731de7a07bb9a`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
