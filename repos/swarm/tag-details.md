<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.7`](#swarm127)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.7`

```console
$ docker pull swarm@sha256:02040b8e8292aacb6e30be8babd613f1c253a3ec665d2fbc178d1745810fdd29
```

-	Platforms:
	-	linux; amd64

### `swarm:1.2.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4581205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0198d9ac25d1ecbdf11e4684b33f74e648f44eb9ac4016bc3a30d51ff7601ee7`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 30 Jun 2017 23:29:07 GMT
COPY file:437ec71eba19c1713ee1560607cc087a6aeb3a2692e6c679ad205b72a4d4a0d8 in /swarm 
# Fri, 30 Jun 2017 23:29:33 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Fri, 30 Jun 2017 23:29:34 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Fri, 30 Jun 2017 23:29:35 GMT
ENV SWARM_HOST=:2375
# Fri, 30 Jun 2017 23:29:36 GMT
EXPOSE 2375/tcp
# Fri, 30 Jun 2017 23:30:02 GMT
VOLUME [/.swarm]
# Fri, 30 Jun 2017 23:30:03 GMT
ENTRYPOINT ["/swarm"]
# Fri, 30 Jun 2017 23:30:04 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:248cc99c81486353e1a9e8c29b03f3f55d9791ab94f4c2d9e2feae3af10f3df7`  
		Last Modified: Fri, 30 Jun 2017 23:30:34 GMT  
		Size: 4.4 MB (4424316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeceddbda6131cb57bb87d2b034977a152ef4052942a2b4e161c4dfe776f7c0`  
		Last Modified: Fri, 30 Jun 2017 23:30:33 GMT  
		Size: 156.8 KB (156761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a34ed5817c01d4f80b220d1c7e0a4d2d13be8fa427f4ee6aa20e3809d1416`  
		Last Modified: Fri, 30 Jun 2017 23:30:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swarm:latest`

```console
$ docker pull swarm@sha256:815fc8fd4617d866e1256999c2c0a55cc8f377f3dade26c3edde3f0543a70c04
```

-	Platforms:
	-	linux; amd64

### `swarm:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4467277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b1e23becabc0b27c5787712dce019982c048665fd9e7e6cb032a46bcac510d`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 18 Jan 2017 01:37:07 GMT
COPY file:5a19245919cff4830eebbaabdc4402a33a81127a99d933404a8c22bac9cbcaf8 in /swarm 
# Wed, 18 Jan 2017 02:32:04 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Wed, 18 Jan 2017 02:32:04 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Wed, 18 Jan 2017 02:32:05 GMT
ENV SWARM_HOST=:2375
# Wed, 18 Jan 2017 02:32:05 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 02:32:05 GMT
VOLUME [/.swarm]
# Wed, 18 Jan 2017 02:32:06 GMT
ENTRYPOINT ["/swarm"]
# Wed, 18 Jan 2017 02:32:06 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ebe0176dcf9a8134c1bf8b67c40ef79b14b90928eff8955ff728e4edfc9f3ac6`  
		Last Modified: Wed, 18 Jan 2017 02:32:25 GMT  
		Size: 4.3 MB (4309391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f771faa98255af1b02144d950a8e8f1b432b766f3db9a6a6ceeb9617a827b8`  
		Last Modified: Wed, 18 Jan 2017 02:32:25 GMT  
		Size: 157.8 KB (157761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902eeedf931aca0a5bdbebe339bd8d712dd210be43c639cfdfaf44162394cfb4`  
		Last Modified: Wed, 18 Jan 2017 02:32:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
