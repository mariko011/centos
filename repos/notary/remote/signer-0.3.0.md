## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:123afaf958207a09d75bf917d3e02899df5d9aa2e45e8747662a1ab674b712c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:9f23f851959b93805252ec449aa09172134ba2347630503db416ee0f3f145f2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9595a8f84738211a715dde53577b9540de877c7cf5191c39bb767aee40012ddd`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:34 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:35 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:10:36 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:36 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:10:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f82471e9412901005acb9173b70539d4dfc39f473f047258b19cb3b67e9926`  
		Last Modified: Thu, 26 Oct 2017 01:22:07 GMT  
		Size: 4.6 MB (4575964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d6c70e5e90cc6cbe534ac59ed334921d7166810012e11286d8b75581583f9`  
		Last Modified: Thu, 26 Oct 2017 01:22:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf12c453d7a6cd41991a9b63172c7d54a7d33e75b509916971cf3b732d8f9b45`  
		Last Modified: Thu, 26 Oct 2017 01:22:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
