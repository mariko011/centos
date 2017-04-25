## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:4e172e4f38750be44896dbadc1803ce45311fe4f9387d8aef3dd0ae48a0804d9
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82011553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc6b238b102a3775adbf5a954f1c5d53ed60789bc21b08397274d7fef02220`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:25:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 24 Apr 2017 23:41:18 GMT
ENV KAPACITOR_VERSION=1.2.0
# Mon, 24 Apr 2017 23:41:22 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Mon, 24 Apr 2017 23:41:23 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 24 Apr 2017 23:41:24 GMT
EXPOSE 9092/tcp
# Mon, 24 Apr 2017 23:41:24 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 24 Apr 2017 23:41:25 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Mon, 24 Apr 2017 23:41:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 23:41:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4715d1852381431f1f56c8cc181c1e32e13bfcf83cbee61bad195b55af9b5d`  
		Last Modified: Tue, 25 Apr 2017 16:56:35 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b365495639ad373565e7e5660f4208929586faf893751b54032f03616afed416`  
		Last Modified: Tue, 25 Apr 2017 18:33:15 GMT  
		Size: 10.2 MB (10187811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c66596cec5511b912eb3e2f40e4330357bc68008fbf9578b64144797d8caaf5`  
		Last Modified: Tue, 25 Apr 2017 18:33:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d132fd685d0fffd90e271e7a65a49264f4051b7698a400667842161b5279496`  
		Last Modified: Tue, 25 Apr 2017 18:33:12 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
