## `consul:latest`

```console
$ docker pull consul@sha256:004634b499ab0144aff74e49578833502f03791ea37bddf4e9b95f02a123208a
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10609059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6498538dc77ae0471f9113653adb056cb079093237df852ee96523d11dbf5fa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:34:16 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 23 Sep 2016 16:34:16 GMT
ENV CONSUL_VERSION=0.7.0
# Fri, 23 Sep 2016 16:34:16 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 23 Sep 2016 16:34:17 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 23 Sep 2016 16:34:31 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 23 Sep 2016 16:34:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 23 Sep 2016 16:34:32 GMT
VOLUME [/consul/data]
# Fri, 23 Sep 2016 16:34:32 GMT
EXPOSE 8300/tcp
# Fri, 23 Sep 2016 16:34:33 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 23 Sep 2016 16:34:33 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Fri, 23 Sep 2016 16:34:34 GMT
COPY file:6676f27da0116d8c6c0d4e60a1f3dd6bde44a4b14dc65edbe174cb907dc16353 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 23 Sep 2016 16:34:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:34:34 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b03704b691e92a9437a8886dd19392a90ce768cfbe79053d5e64609057e6c05`  
		Last Modified: Fri, 23 Sep 2016 16:34:41 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3125ea5d72b4c1b4b473e32c0ff5f60d2022d3b14a8760fc0aef6c9f494bc80`  
		Last Modified: Fri, 23 Sep 2016 16:34:44 GMT  
		Size: 8.3 MB (8293095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f93d7d7828bd88bb4e9ce304c10f0349cc195442cb34a8850639aa819645`  
		Last Modified: Fri, 23 Sep 2016 16:34:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64057977645bc01833cd0ec4b961a612ec9c93c9868624b918648f0cb77f5c`  
		Last Modified: Fri, 23 Sep 2016 16:34:44 GMT  
		Size: 1.6 KB (1622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
