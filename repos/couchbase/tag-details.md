<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.5.0`](#couchbase450)
-	[`couchbase:enterprise-4.5.0`](#couchbaseenterprise-450)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.1.0`](#couchbasecommunity-410)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:03237c26e6d468cc115bb6174a463a0928068e663c2687e74fed91633405d366
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208001245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bc4ece36475df2181c725fd8791bfee96aa5cd514f0a771d635cbdace561c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:03:38 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 11 Aug 2016 19:05:20 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 11 Aug 2016 19:05:22 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 11 Aug 2016 19:05:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 11 Aug 2016 19:06:12 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 11 Aug 2016 19:06:14 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Thu, 11 Aug 2016 19:06:16 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Thu, 11 Aug 2016 19:06:20 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 11 Aug 2016 19:06:24 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 11 Aug 2016 19:06:26 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Thu, 11 Aug 2016 19:06:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:06:28 GMT
CMD ["couchbase-server"]
# Thu, 11 Aug 2016 19:06:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 11 Aug 2016 19:06:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:65abcde589a8968d9f293ce47fc79cfb82cb66bf8f8869fa9ae497c9c37cf502`  
		Last Modified: Thu, 11 Aug 2016 19:06:57 GMT  
		Size: 11.3 MB (11254644 bytes)
	-	`sha256:f6560da39d03f9689802a23c9fc650f29d0254d2b1f5bc76c68f01746d9eaa7b`  
		Last Modified: Thu, 11 Aug 2016 19:06:50 GMT  
		Size: 1.9 KB (1860 bytes)
	-	`sha256:276f0fbd8f74a1c910274eed1ea0a106967a29662952b3dd795cb74c0f44782d`  
		Last Modified: Thu, 11 Aug 2016 19:07:58 GMT  
		Size: 130.9 MB (130872062 bytes)
	-	`sha256:128d3e26ab309027fcea0a5564872292fca2fcb3a83c11635d221d91df512ea7`  
		Last Modified: Thu, 11 Aug 2016 19:06:48 GMT  
		Size: 334.0 B
	-	`sha256:54981b22fd08d3c1605e8ef0404e3d8bc78bafa8d036189ab9a7991976f8ab9f`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 229.0 B
	-	`sha256:973196d43bbd75630e7aba7ac4a0dcb7658694b476ddea99a4725a9ca342163c`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 213.0 B
	-	`sha256:294abd739e37524243788b1e6cdfd3cbb55167791e41ec5812208a031a83426d`  
		Last Modified: Thu, 11 Aug 2016 19:06:48 GMT  
		Size: 99.1 KB (99106 bytes)
	-	`sha256:7ad0038e09ddd8ca6b130b3f907303cacc076c24c2301768cf53cbc80218ca07`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 253.0 B

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:130c912eeca3bb1f01674d7ecc0578b6a1246e5ba9afc091eb4af26469ab9e9b
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208005376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8807c17265d4bad0545bf6d15d2adace04b40c96f0f9a11d0592cbaaea244f71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:33:03 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:34:18 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 22 Jul 2016 17:37:56 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 22 Jul 2016 17:37:58 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 22 Jul 2016 17:38:28 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 22 Jul 2016 17:38:30 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 22 Jul 2016 17:38:31 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 22 Jul 2016 17:38:32 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 22 Jul 2016 17:38:34 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 22 Jul 2016 17:38:35 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 22 Jul 2016 17:38:36 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 22 Jul 2016 17:38:36 GMT
CMD ["couchbase-server"]
# Fri, 22 Jul 2016 17:38:37 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 22 Jul 2016 17:38:38 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:f9110bb8810027509bf94d249da21c988cea7ef5342761a5723d562c926029ba`  
		Last Modified: Fri, 22 Jul 2016 17:35:05 GMT  
		Size: 11.3 MB (11254445 bytes)
	-	`sha256:b2d42b27fb539e6a256cfe28f6a363f276698b1d8903390c202d81666811d7f2`  
		Last Modified: Fri, 22 Jul 2016 17:38:49 GMT  
		Size: 1.9 KB (1852 bytes)
	-	`sha256:1daffec9689e382ae0abb6adf6923354f19cbe57a53d2e0337e3f7dccabac487`  
		Last Modified: Fri, 22 Jul 2016 17:39:22 GMT  
		Size: 130.9 MB (130877269 bytes)
	-	`sha256:9d9a8934defec0662cda50014d17f279d0ce466b6841fd900772b19b4b807cb4`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 334.0 B
	-	`sha256:aca2b7fb163f5817611d686a1df968c3108ae1b8f97c821f647f91d9452005f9`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 230.0 B
	-	`sha256:9ec3fc6585996bcf17c9e19a5d0ac9fda05c78cdfc1d6dd920b7a67b30f92b1a`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 211.0 B
	-	`sha256:c6414a4d93563f458a9ab24905b4ea3f22e634d44fff3f1cd7f811ec7b0a60db`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 99.1 KB (99105 bytes)
	-	`sha256:a3da4f8943b0005b65dd5457a931540bfb99a70c486f6e61a3e0890807826811`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 253.0 B

## `couchbase:4.5.0`

```console
$ docker pull couchbase@sha256:03237c26e6d468cc115bb6174a463a0928068e663c2687e74fed91633405d366
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208001245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bc4ece36475df2181c725fd8791bfee96aa5cd514f0a771d635cbdace561c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:03:38 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 11 Aug 2016 19:05:20 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 11 Aug 2016 19:05:22 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 11 Aug 2016 19:05:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 11 Aug 2016 19:06:12 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 11 Aug 2016 19:06:14 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Thu, 11 Aug 2016 19:06:16 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Thu, 11 Aug 2016 19:06:20 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 11 Aug 2016 19:06:24 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 11 Aug 2016 19:06:26 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Thu, 11 Aug 2016 19:06:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:06:28 GMT
CMD ["couchbase-server"]
# Thu, 11 Aug 2016 19:06:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 11 Aug 2016 19:06:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:65abcde589a8968d9f293ce47fc79cfb82cb66bf8f8869fa9ae497c9c37cf502`  
		Last Modified: Thu, 11 Aug 2016 19:06:57 GMT  
		Size: 11.3 MB (11254644 bytes)
	-	`sha256:f6560da39d03f9689802a23c9fc650f29d0254d2b1f5bc76c68f01746d9eaa7b`  
		Last Modified: Thu, 11 Aug 2016 19:06:50 GMT  
		Size: 1.9 KB (1860 bytes)
	-	`sha256:276f0fbd8f74a1c910274eed1ea0a106967a29662952b3dd795cb74c0f44782d`  
		Last Modified: Thu, 11 Aug 2016 19:07:58 GMT  
		Size: 130.9 MB (130872062 bytes)
	-	`sha256:128d3e26ab309027fcea0a5564872292fca2fcb3a83c11635d221d91df512ea7`  
		Last Modified: Thu, 11 Aug 2016 19:06:48 GMT  
		Size: 334.0 B
	-	`sha256:54981b22fd08d3c1605e8ef0404e3d8bc78bafa8d036189ab9a7991976f8ab9f`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 229.0 B
	-	`sha256:973196d43bbd75630e7aba7ac4a0dcb7658694b476ddea99a4725a9ca342163c`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 213.0 B
	-	`sha256:294abd739e37524243788b1e6cdfd3cbb55167791e41ec5812208a031a83426d`  
		Last Modified: Thu, 11 Aug 2016 19:06:48 GMT  
		Size: 99.1 KB (99106 bytes)
	-	`sha256:7ad0038e09ddd8ca6b130b3f907303cacc076c24c2301768cf53cbc80218ca07`  
		Last Modified: Thu, 11 Aug 2016 19:06:47 GMT  
		Size: 253.0 B

## `couchbase:enterprise-4.5.0`

```console
$ docker pull couchbase@sha256:130c912eeca3bb1f01674d7ecc0578b6a1246e5ba9afc091eb4af26469ab9e9b
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208005376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8807c17265d4bad0545bf6d15d2adace04b40c96f0f9a11d0592cbaaea244f71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:33:03 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:34:18 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 22 Jul 2016 17:37:56 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 22 Jul 2016 17:37:58 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 22 Jul 2016 17:38:28 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 22 Jul 2016 17:38:30 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 22 Jul 2016 17:38:31 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 22 Jul 2016 17:38:32 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 22 Jul 2016 17:38:34 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 22 Jul 2016 17:38:35 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 22 Jul 2016 17:38:36 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 22 Jul 2016 17:38:36 GMT
CMD ["couchbase-server"]
# Fri, 22 Jul 2016 17:38:37 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 22 Jul 2016 17:38:38 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:f9110bb8810027509bf94d249da21c988cea7ef5342761a5723d562c926029ba`  
		Last Modified: Fri, 22 Jul 2016 17:35:05 GMT  
		Size: 11.3 MB (11254445 bytes)
	-	`sha256:b2d42b27fb539e6a256cfe28f6a363f276698b1d8903390c202d81666811d7f2`  
		Last Modified: Fri, 22 Jul 2016 17:38:49 GMT  
		Size: 1.9 KB (1852 bytes)
	-	`sha256:1daffec9689e382ae0abb6adf6923354f19cbe57a53d2e0337e3f7dccabac487`  
		Last Modified: Fri, 22 Jul 2016 17:39:22 GMT  
		Size: 130.9 MB (130877269 bytes)
	-	`sha256:9d9a8934defec0662cda50014d17f279d0ce466b6841fd900772b19b4b807cb4`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 334.0 B
	-	`sha256:aca2b7fb163f5817611d686a1df968c3108ae1b8f97c821f647f91d9452005f9`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 230.0 B
	-	`sha256:9ec3fc6585996bcf17c9e19a5d0ac9fda05c78cdfc1d6dd920b7a67b30f92b1a`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 211.0 B
	-	`sha256:c6414a4d93563f458a9ab24905b4ea3f22e634d44fff3f1cd7f811ec7b0a60db`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 99.1 KB (99105 bytes)
	-	`sha256:a3da4f8943b0005b65dd5457a931540bfb99a70c486f6e61a3e0890807826811`  
		Last Modified: Fri, 22 Jul 2016 17:38:46 GMT  
		Size: 253.0 B

## `couchbase:community`

```console
$ docker pull couchbase@sha256:0a8e20a74282c8d06df7514869cc284883ef45abb87216e428ce7a7ed0fcebe7
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164370111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b28149ed0c57b7e06d2089e0567712e403f5fa757b7c65efcfff5f2a620c65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:33:03 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:34:18 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 05 Aug 2016 23:34:49 GMT
ENV CB_VERSION=4.1.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 05 Aug 2016 23:34:51 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 05 Aug 2016 23:35:18 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 05 Aug 2016 23:35:19 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 05 Aug 2016 23:35:19 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 05 Aug 2016 23:35:21 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 05 Aug 2016 23:35:22 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 05 Aug 2016 23:35:23 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 05 Aug 2016 23:35:23 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 05 Aug 2016 23:35:24 GMT
CMD ["couchbase-server"]
# Fri, 05 Aug 2016 23:35:24 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 05 Aug 2016 23:35:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:f9110bb8810027509bf94d249da21c988cea7ef5342761a5723d562c926029ba`  
		Last Modified: Fri, 22 Jul 2016 17:35:05 GMT  
		Size: 11.3 MB (11254445 bytes)
	-	`sha256:72f86eb7514d20a017f408b8fb270c68ec6b31d4801906619e2d5481f962cda3`  
		Last Modified: Fri, 05 Aug 2016 23:37:13 GMT  
		Size: 1.9 KB (1857 bytes)
	-	`sha256:069851ff856e8f882b10892c7b327f6384be63e868ffb5cd599db4ce0a8c517e`  
		Last Modified: Fri, 05 Aug 2016 23:37:33 GMT  
		Size: 87.2 MB (87242005 bytes)
	-	`sha256:b598093f9a693d571dd06ef74dd534b8464fd2798ee7a34890c941fbc47afe8e`  
		Last Modified: Fri, 05 Aug 2016 23:37:10 GMT  
		Size: 333.0 B
	-	`sha256:640202772de23b865c651178d842813e6d54bb5faaa371a777280e8dbd73ab84`  
		Last Modified: Fri, 05 Aug 2016 23:37:10 GMT  
		Size: 230.0 B
	-	`sha256:2a7b37df5813dd617eaffcda063cdd19bb8106ecbccbd72b23d427f765493292`  
		Last Modified: Fri, 05 Aug 2016 23:37:10 GMT  
		Size: 211.0 B
	-	`sha256:15e2a4b8b102816889235ecfa74393d3456cb6a09215695f7b679f3078e20124`  
		Last Modified: Fri, 05 Aug 2016 23:37:10 GMT  
		Size: 99.1 KB (99102 bytes)
	-	`sha256:6bd6fc14f5bca2eecad0081eb0bc8b02000538bcdca176d48035ad40edf663ce`  
		Last Modified: Fri, 05 Aug 2016 23:37:10 GMT  
		Size: 251.0 B

## `couchbase:community-4.1.0`

```console
$ docker pull couchbase@sha256:ac1d5023719ce31ef99ea1acb4a5f741368f11f3bdddfeb3eb7a59df3cbcef19
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164371612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8711a9217f7ffa4b2e8be34aad70fe94a0ad7f8c1aec965d860ca5686b2bfba6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:03:38 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 11 Aug 2016 19:05:20 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 11 Aug 2016 19:08:56 GMT
ENV CB_VERSION=4.1.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 11 Aug 2016 19:08:59 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 11 Aug 2016 19:09:37 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 11 Aug 2016 19:09:39 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Thu, 11 Aug 2016 19:09:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Thu, 11 Aug 2016 19:09:43 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 11 Aug 2016 19:09:46 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 11 Aug 2016 19:09:48 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Thu, 11 Aug 2016 19:09:49 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:09:50 GMT
CMD ["couchbase-server"]
# Thu, 11 Aug 2016 19:09:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 11 Aug 2016 19:09:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:65abcde589a8968d9f293ce47fc79cfb82cb66bf8f8869fa9ae497c9c37cf502`  
		Last Modified: Thu, 11 Aug 2016 19:06:57 GMT  
		Size: 11.3 MB (11254644 bytes)
	-	`sha256:ccb9aa80111ad659b73a6fad0715f73284c5f69659d4f457fdaa008cb37e9f95`  
		Last Modified: Thu, 11 Aug 2016 19:10:12 GMT  
		Size: 1.9 KB (1853 bytes)
	-	`sha256:e6ddc7e5de86b3e4e526d80f96b500c22898d26ef3d9d29769de407a89200e17`  
		Last Modified: Thu, 11 Aug 2016 19:10:53 GMT  
		Size: 87.2 MB (87242438 bytes)
	-	`sha256:a9356cba526099e7b2a7badec5f2cfa3d839406a6b1577a28c0adba89354b96a`  
		Last Modified: Thu, 11 Aug 2016 19:10:09 GMT  
		Size: 334.0 B
	-	`sha256:a1a81e7d7f2ed32bcac35fe1c5313bbe7ab0dca03c95e5ad26656aa9d6eeb4a8`  
		Last Modified: Thu, 11 Aug 2016 19:10:10 GMT  
		Size: 229.0 B
	-	`sha256:369f3363f2a374999d025dca487ec1d03edef7190b54fe29dfd5d60b87984c00`  
		Last Modified: Thu, 11 Aug 2016 19:10:10 GMT  
		Size: 212.0 B
	-	`sha256:59756a44e6f609c584eaf3f6c641801d46d956d3c5c46446a5c528bdd9b11b30`  
		Last Modified: Thu, 11 Aug 2016 19:10:10 GMT  
		Size: 99.1 KB (99106 bytes)
	-	`sha256:34f58cb8b7103d1307e16c2ea1f3abf75028b53711de05ea7338ad47406e6638`  
		Last Modified: Thu, 11 Aug 2016 19:10:10 GMT  
		Size: 252.0 B

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:1066956ca69567578b1eefe03e5c72574d652f5fac174380a9fa668dfc8a10f7
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 MB (277250701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5804faf502fefe33d213c898ddd08bf82b7a0681c26439680b06ab95537b8b7b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 08 Jul 2016 18:38:49 GMT
ADD file:a5827d860bc00fbb0b885782e98401c104f962c243de0390e1db0b51cc61e1c8 in /
# Fri, 22 Jul 2016 15:18:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:18:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:18:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:18:41 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:30:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:30:39 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 05 Aug 2016 23:35:25 GMT
ENV CB_VERSION=3.1.6 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 05 Aug 2016 23:35:27 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 05 Aug 2016 23:36:09 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 05 Aug 2016 23:36:10 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 05 Aug 2016 23:36:11 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 05 Aug 2016 23:36:12 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 05 Aug 2016 23:36:14 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 05 Aug 2016 23:36:15 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 05 Aug 2016 23:36:15 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 05 Aug 2016 23:36:16 GMT
CMD ["couchbase-server"]
# Fri, 05 Aug 2016 23:36:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 05 Aug 2016 23:36:16 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:76582687379951c724499c3f12ea80dd492283a4115aa509474880830e9d14f4`  
		Last Modified: Fri, 08 Jul 2016 18:40:28 GMT  
		Size: 44.4 MB (44362818 bytes)
	-	`sha256:e7a1879261142f3aca772a969c80aa83553d9775fc9b5526dbb5a37ef70ef83a`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 57.9 KB (57941 bytes)
	-	`sha256:fd01d4f3de3b98ff4bc7b46aa9628d9371903b902de9a6a8becd95429bb6f357`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 721.0 B
	-	`sha256:c704fce22a3c117459a6dfe8018df26d97e91f6cf64db9e49752e3bd5e7470ad`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 680.0 B
	-	`sha256:8223e0f177cd6468da656b7c3551572383ed4d5965e1a81943e1dc6cc7f6a2d4`  
		Last Modified: Fri, 22 Jul 2016 17:31:44 GMT  
		Size: 9.5 MB (9469668 bytes)
	-	`sha256:7896594ab1f1068b48aa561074ab83d1c9d58bfa0e4ca94e7c44bcca93cd8e85`  
		Last Modified: Fri, 05 Aug 2016 23:38:02 GMT  
		Size: 1.7 KB (1717 bytes)
	-	`sha256:7f9accf5b48c48296eaa34568f97a41675e5c87350fd33e1173b83dec62cb4c5`  
		Last Modified: Fri, 05 Aug 2016 23:38:58 GMT  
		Size: 213.1 MB (213080737 bytes)
	-	`sha256:6f4492667ba4b2d4af9cac79e7d805e059717980d5eb876576b97748c1d9f807`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 335.0 B
	-	`sha256:5c0e2f1d61c8eb1d757f140668c478c1bf89c2968834ea547bdebdcd8388880e`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 230.0 B
	-	`sha256:483c6a408cedecabe604c7541926c6c1a5127adde724b58d53381fd7302a7c0b`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 213.0 B
	-	`sha256:2d2c3e13a74dd5986b230a8e093122b3b30297e61343d46ac4516d8c84936e66`  
		Last Modified: Fri, 05 Aug 2016 23:38:04 GMT  
		Size: 10.3 MB (10275391 bytes)
	-	`sha256:06c2b377d1e747111fbb364a596186f685a84a2c7499a64430980e24849f9647`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 250.0 B

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:1066956ca69567578b1eefe03e5c72574d652f5fac174380a9fa668dfc8a10f7
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 MB (277250701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5804faf502fefe33d213c898ddd08bf82b7a0681c26439680b06ab95537b8b7b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 08 Jul 2016 18:38:49 GMT
ADD file:a5827d860bc00fbb0b885782e98401c104f962c243de0390e1db0b51cc61e1c8 in /
# Fri, 22 Jul 2016 15:18:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:18:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:18:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:18:41 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:30:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:30:39 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 05 Aug 2016 23:35:25 GMT
ENV CB_VERSION=3.1.6 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 05 Aug 2016 23:35:27 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 05 Aug 2016 23:36:09 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 05 Aug 2016 23:36:10 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 05 Aug 2016 23:36:11 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 05 Aug 2016 23:36:12 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 05 Aug 2016 23:36:14 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 05 Aug 2016 23:36:15 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 05 Aug 2016 23:36:15 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 05 Aug 2016 23:36:16 GMT
CMD ["couchbase-server"]
# Fri, 05 Aug 2016 23:36:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 05 Aug 2016 23:36:16 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:76582687379951c724499c3f12ea80dd492283a4115aa509474880830e9d14f4`  
		Last Modified: Fri, 08 Jul 2016 18:40:28 GMT  
		Size: 44.4 MB (44362818 bytes)
	-	`sha256:e7a1879261142f3aca772a969c80aa83553d9775fc9b5526dbb5a37ef70ef83a`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 57.9 KB (57941 bytes)
	-	`sha256:fd01d4f3de3b98ff4bc7b46aa9628d9371903b902de9a6a8becd95429bb6f357`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 721.0 B
	-	`sha256:c704fce22a3c117459a6dfe8018df26d97e91f6cf64db9e49752e3bd5e7470ad`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 680.0 B
	-	`sha256:8223e0f177cd6468da656b7c3551572383ed4d5965e1a81943e1dc6cc7f6a2d4`  
		Last Modified: Fri, 22 Jul 2016 17:31:44 GMT  
		Size: 9.5 MB (9469668 bytes)
	-	`sha256:7896594ab1f1068b48aa561074ab83d1c9d58bfa0e4ca94e7c44bcca93cd8e85`  
		Last Modified: Fri, 05 Aug 2016 23:38:02 GMT  
		Size: 1.7 KB (1717 bytes)
	-	`sha256:7f9accf5b48c48296eaa34568f97a41675e5c87350fd33e1173b83dec62cb4c5`  
		Last Modified: Fri, 05 Aug 2016 23:38:58 GMT  
		Size: 213.1 MB (213080737 bytes)
	-	`sha256:6f4492667ba4b2d4af9cac79e7d805e059717980d5eb876576b97748c1d9f807`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 335.0 B
	-	`sha256:5c0e2f1d61c8eb1d757f140668c478c1bf89c2968834ea547bdebdcd8388880e`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 230.0 B
	-	`sha256:483c6a408cedecabe604c7541926c6c1a5127adde724b58d53381fd7302a7c0b`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 213.0 B
	-	`sha256:2d2c3e13a74dd5986b230a8e093122b3b30297e61343d46ac4516d8c84936e66`  
		Last Modified: Fri, 05 Aug 2016 23:38:04 GMT  
		Size: 10.3 MB (10275391 bytes)
	-	`sha256:06c2b377d1e747111fbb364a596186f685a84a2c7499a64430980e24849f9647`  
		Last Modified: Fri, 05 Aug 2016 23:38:00 GMT  
		Size: 250.0 B

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:7abcecda4fbe307a6ec809f76b16dce7a5ec576b9028b382b9d290f96c8939dd
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 MB (277340220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c337371c1fb6fa507280535a541e04bc7de404154122ec2aa98977e04d27660`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 08 Jul 2016 18:38:49 GMT
ADD file:a5827d860bc00fbb0b885782e98401c104f962c243de0390e1db0b51cc61e1c8 in /
# Fri, 22 Jul 2016 15:18:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:18:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:18:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:18:41 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 17:30:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 22 Jul 2016 17:30:39 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 22 Jul 2016 17:35:42 GMT
ENV CB_VERSION=3.1.3 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 22 Jul 2016 17:35:43 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 22 Jul 2016 17:36:20 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 22 Jul 2016 17:36:23 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 22 Jul 2016 17:36:25 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 22 Jul 2016 17:36:26 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 22 Jul 2016 17:36:29 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 22 Jul 2016 17:36:30 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 22 Jul 2016 17:36:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 22 Jul 2016 17:36:31 GMT
CMD ["couchbase-server"]
# Fri, 22 Jul 2016 17:36:31 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 22 Jul 2016 17:36:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:76582687379951c724499c3f12ea80dd492283a4115aa509474880830e9d14f4`  
		Last Modified: Fri, 08 Jul 2016 18:40:28 GMT  
		Size: 44.4 MB (44362818 bytes)
	-	`sha256:e7a1879261142f3aca772a969c80aa83553d9775fc9b5526dbb5a37ef70ef83a`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 57.9 KB (57941 bytes)
	-	`sha256:fd01d4f3de3b98ff4bc7b46aa9628d9371903b902de9a6a8becd95429bb6f357`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 721.0 B
	-	`sha256:c704fce22a3c117459a6dfe8018df26d97e91f6cf64db9e49752e3bd5e7470ad`  
		Last Modified: Fri, 22 Jul 2016 15:20:27 GMT  
		Size: 680.0 B
	-	`sha256:8223e0f177cd6468da656b7c3551572383ed4d5965e1a81943e1dc6cc7f6a2d4`  
		Last Modified: Fri, 22 Jul 2016 17:31:44 GMT  
		Size: 9.5 MB (9469668 bytes)
	-	`sha256:668e29c9858bf003156124ef2c1d1f4df496d42fa2613f7d2db2d40a2d5e9f18`  
		Last Modified: Fri, 22 Jul 2016 17:36:43 GMT  
		Size: 1.7 KB (1717 bytes)
	-	`sha256:8fa1fe657d32a1c7feddcbc20d0bf8e2bdb1e46cb02f3ae48c2b07d92a9d8db9`  
		Last Modified: Fri, 22 Jul 2016 17:37:40 GMT  
		Size: 213.2 MB (213170231 bytes)
	-	`sha256:f48ca7042ec7755fbab335f7ed6e9738a765eb28138e556cd008b50d39e17ebe`  
		Last Modified: Fri, 22 Jul 2016 17:36:40 GMT  
		Size: 334.0 B
	-	`sha256:9afa5462c1c08ca822bee37e6d3ca94b210d43ffbc370c202f5c331467131a9b`  
		Last Modified: Fri, 22 Jul 2016 17:36:41 GMT  
		Size: 229.0 B
	-	`sha256:39fe4e047ba93e59d0629e91d837d531a906e1b399b26e7274d28a48be9fc626`  
		Last Modified: Fri, 22 Jul 2016 17:36:40 GMT  
		Size: 212.0 B
	-	`sha256:d354f300e7483286128ebd96d8f18d68236a6ae206e42a33e18d01314b7c0fcd`  
		Last Modified: Fri, 22 Jul 2016 17:36:44 GMT  
		Size: 10.3 MB (10275416 bytes)
	-	`sha256:cd8ac4b32dee11276fd9a3a880dbdc5cadf9956ac4427edc13239e96d84c1465`  
		Last Modified: Fri, 22 Jul 2016 17:36:40 GMT  
		Size: 253.0 B
