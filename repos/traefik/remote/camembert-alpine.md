## `traefik:camembert-alpine`

```console
$ docker pull traefik@sha256:abd889774178448315b368e94684a129a8425f4163ff5832175fdbc3ca1db315
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ab6bd9431cc4c59545a32d61b70f380c8991490eb76ea1055a9a705b66c0e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:21 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Tue, 27 Dec 2016 22:08:22 GMT
COPY file:29b1fa12b70d2862f67cec3f481f6cc7866d44322d068d99898a0020e3561814 in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:08:23 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Dec 2016 22:08:23 GMT
EXPOSE 80/tcp
# Tue, 27 Dec 2016 22:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 22:08:24 GMT
CMD ["--help"]
# Tue, 27 Dec 2016 22:08:24 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.1.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1bb5764098d6c54914885aa0f3b9c3291affe6a45b107bb34d8dd9a00f6882`  
		Last Modified: Tue, 27 Dec 2016 22:32:49 GMT  
		Size: 344.0 KB (343977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b141d7c08182a35001d5123cd963a6a312f49fff16722221925dd80c6cae245`  
		Last Modified: Tue, 27 Dec 2016 22:32:51 GMT  
		Size: 5.5 MB (5462964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d487bb3eb4a13ef411eef468cd5a84241b3af3bcdceb4fb4bcc679fc70356`  
		Last Modified: Tue, 27 Dec 2016 22:32:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
