## `traefik:raclette`

```console
$ docker pull traefik@sha256:83dc4274db668b6b0d0685ae53a5517eb8e2245f949e6072747cec428d3faf4a
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12960755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e727fffba311b6d2ee2fe9272e321653b97b355c5a593182ab5a4a185f150e4e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 22 Aug 2017 18:09:46 GMT
COPY file:78994e20268cbfe316217398bc82a9327acda34113cb6599937b1b2a2630d12c in / 
# Tue, 22 Aug 2017 18:09:46 GMT
EXPOSE 80/tcp
# Tue, 22 Aug 2017 18:09:46 GMT
ENTRYPOINT ["/traefik"]
# Tue, 22 Aug 2017 18:09:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc0d1e6f1bdd1f67049e0bffb3543b67097051248141ec686456a79d8144b26`  
		Last Modified: Tue, 22 Aug 2017 18:10:05 GMT  
		Size: 12.8 MB (12825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
