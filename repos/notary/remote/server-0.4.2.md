## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:a80e15ad69b642615dac24b69b84e29c9c2f9b67f7c0f87ef0d0ee85ccca54ee
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c35d29da622e08f25b0afe5d4ce2693876d679d7e89d40b4b995269c3c2ebc9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 14 Nov 2016 23:22:20 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Mon, 14 Nov 2016 23:22:20 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 14 Nov 2016 23:22:21 GMT
WORKDIR /notary/server
# Mon, 14 Nov 2016 23:22:22 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:22 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 14 Nov 2016 23:22:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7147c4c9071ea64d5e9ff4bdf652a9a47a982958105c75d28f22a78a02f781da`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fd738c010f82cb34c8650eb5066d105d73ad54e39fe98ad53f1499ffeb7cf`  
		Last Modified: Mon, 14 Nov 2016 23:24:10 GMT  
		Size: 3.9 MB (3893984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da124ba71cf282bc13f9f8975bf7301995d24ce8a4175d2fbcd43e2c09d7a1b3`  
		Last Modified: Mon, 14 Nov 2016 23:24:09 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6418d53746cfed9c2e601b368a2de38de7e5b7b35861e75a7690481d45f60e8`  
		Last Modified: Mon, 14 Nov 2016 23:24:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
