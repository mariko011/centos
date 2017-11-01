<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:10`](#odoo10)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:11`](#odoo11)
-	[`odoo:11.0`](#odoo110)
-	[`odoo:9`](#odoo9)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:latest`](#odoolatest)

## `odoo:10`

```console
$ docker pull odoo@sha256:1ebbacecf5e45027c86d1f5113179f7197b28406de7ec20a4132bb9653143e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:b200ba3e456c3262ab77ecc5986ef8c342dd35a39742335ecf0038220ba1233e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274708093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcaf67c45e88b728fdbe11bec33a79c243090205876a9059cb5f9c7e24fe2d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:36:14 GMT
ENV ODOO_VERSION=10.0
# Tue, 10 Oct 2017 00:36:15 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:37:23 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:37:24 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Oct 2017 00:37:24 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:37:25 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Oct 2017 00:37:26 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:37:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:37:26 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:37:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Oct 2017 00:37:26 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:37:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:37:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736127d35c2047224aa4e06ababe1bfd1737bc4c6eb86fd12802181ff03870e9`  
		Last Modified: Tue, 10 Oct 2017 00:46:08 GMT  
		Size: 133.4 MB (133373821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacca3bc162072927fdaebb0c670218f1f8720985f0408977dcd0b169bb80727`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca6d801c8441689d06a318a94cd53c4cfe30a9d6bf9c2bdf292a001c7011d5`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d562625190e67cafe00887fe1398683cc8bbed10285b15e95c0ff1e2a9156b66`  
		Last Modified: Tue, 10 Oct 2017 00:45:30 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c294eb2a5014d1223e6a962f7233cc0332e41b9fb7e06c3e709ced970cd9af3`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:1ebbacecf5e45027c86d1f5113179f7197b28406de7ec20a4132bb9653143e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:b200ba3e456c3262ab77ecc5986ef8c342dd35a39742335ecf0038220ba1233e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274708093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcaf67c45e88b728fdbe11bec33a79c243090205876a9059cb5f9c7e24fe2d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:36:14 GMT
ENV ODOO_VERSION=10.0
# Tue, 10 Oct 2017 00:36:15 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:37:23 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:37:24 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Oct 2017 00:37:24 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:37:25 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Oct 2017 00:37:26 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:37:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:37:26 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:37:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Oct 2017 00:37:26 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:37:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:37:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736127d35c2047224aa4e06ababe1bfd1737bc4c6eb86fd12802181ff03870e9`  
		Last Modified: Tue, 10 Oct 2017 00:46:08 GMT  
		Size: 133.4 MB (133373821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacca3bc162072927fdaebb0c670218f1f8720985f0408977dcd0b169bb80727`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca6d801c8441689d06a318a94cd53c4cfe30a9d6bf9c2bdf292a001c7011d5`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d562625190e67cafe00887fe1398683cc8bbed10285b15e95c0ff1e2a9156b66`  
		Last Modified: Tue, 10 Oct 2017 00:45:30 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c294eb2a5014d1223e6a962f7233cc0332e41b9fb7e06c3e709ced970cd9af3`  
		Last Modified: Tue, 10 Oct 2017 00:45:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:0f23add9a661047f110325fd51ddf14e2eedab9faadda9d01134d72289416b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:ff710ffe1f98d84c0411624d30bdbd9205ff1afc644d6337e743812a856969aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.7 MB (409733665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188351f00031f80235570e6d6c514c3f7dada7342047ced42ef2f58de68594ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 13 Oct 2017 20:08:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_VERSION=11.0
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_RELEASE=20171013
# Fri, 13 Oct 2017 20:09:14 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '596e01ef47fda076f086791a12eb360af42d9a14 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 13 Oct 2017 20:09:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 13 Oct 2017 20:09:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 13 Oct 2017 20:09:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 13 Oct 2017 20:09:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:17 GMT
USER [odoo]
# Fri, 13 Oct 2017 20:09:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Oct 2017 20:09:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f55b8eb80bd608362b4eaa8cb72cf34705d24202f3f5fa3b99d20ea80b3d2c3`  
		Last Modified: Fri, 13 Oct 2017 20:15:51 GMT  
		Size: 221.3 MB (221255948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaee36ec887882475ca1673281297487b49f92ef3d1d5f98c6ae511ac9c4243`  
		Last Modified: Fri, 13 Oct 2017 20:15:42 GMT  
		Size: 143.3 MB (143346797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba4dc94124701bb9e8e6648e67e4c98959278ef1cc0ee9c8e3546f8f3e8832b`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb837b81001c704098efb35fe643567de4649241a8f76973dc463c06292d86`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e91f6f7e03bfdab2286b5dc5a84b9c2ab5619e3c49c952b0c327d552c0df5`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3636e3fe4b3c3a50856829ee86ea5eac6b24a54f2abc44c3fd570d862e4f4f5`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:0f23add9a661047f110325fd51ddf14e2eedab9faadda9d01134d72289416b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:ff710ffe1f98d84c0411624d30bdbd9205ff1afc644d6337e743812a856969aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.7 MB (409733665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188351f00031f80235570e6d6c514c3f7dada7342047ced42ef2f58de68594ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 13 Oct 2017 20:08:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_VERSION=11.0
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_RELEASE=20171013
# Fri, 13 Oct 2017 20:09:14 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '596e01ef47fda076f086791a12eb360af42d9a14 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 13 Oct 2017 20:09:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 13 Oct 2017 20:09:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 13 Oct 2017 20:09:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 13 Oct 2017 20:09:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:17 GMT
USER [odoo]
# Fri, 13 Oct 2017 20:09:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Oct 2017 20:09:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f55b8eb80bd608362b4eaa8cb72cf34705d24202f3f5fa3b99d20ea80b3d2c3`  
		Last Modified: Fri, 13 Oct 2017 20:15:51 GMT  
		Size: 221.3 MB (221255948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaee36ec887882475ca1673281297487b49f92ef3d1d5f98c6ae511ac9c4243`  
		Last Modified: Fri, 13 Oct 2017 20:15:42 GMT  
		Size: 143.3 MB (143346797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba4dc94124701bb9e8e6648e67e4c98959278ef1cc0ee9c8e3546f8f3e8832b`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb837b81001c704098efb35fe643567de4649241a8f76973dc463c06292d86`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e91f6f7e03bfdab2286b5dc5a84b9c2ab5619e3c49c952b0c327d552c0df5`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3636e3fe4b3c3a50856829ee86ea5eac6b24a54f2abc44c3fd570d862e4f4f5`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:46c819950206f8898b6eb5656bd18a3a5eada5089b56d85a3273811ca03c5e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:02460b6e4937c139c66f940de803d340c326e80c01f7c4f04eb5beaaa182aa38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ec0137193d9ad1e6ff304bee1679c5b81d52daf67d624c2a03c1a44b2459e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:35:40 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:36:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:36:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:36:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:36:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:36:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:36:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245e20f318aa15580b86769c1a17cecc6eec803e64446bf615fe4ee009b098b`  
		Last Modified: Tue, 10 Oct 2017 00:40:45 GMT  
		Size: 148.6 MB (148553979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8be2f9dbbd83d9b8d44c24572963b871760ee9e324a8ee19fb7ce2d048bb42d`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8532f713ee106b2b632309f0acecb40ee9c2c43593e378eb6fb9d0689cc9da0`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cc5af00dc0db3393621f64cb00d3d848b29047fc170d22f05927776609f845`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac2a3874f0f99b71520054772dda524959255bda166386891aa9fd735ecbe`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:46c819950206f8898b6eb5656bd18a3a5eada5089b56d85a3273811ca03c5e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:02460b6e4937c139c66f940de803d340c326e80c01f7c4f04eb5beaaa182aa38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ec0137193d9ad1e6ff304bee1679c5b81d52daf67d624c2a03c1a44b2459e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:35:40 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:36:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:36:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:36:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:36:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:36:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:36:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245e20f318aa15580b86769c1a17cecc6eec803e64446bf615fe4ee009b098b`  
		Last Modified: Tue, 10 Oct 2017 00:40:45 GMT  
		Size: 148.6 MB (148553979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8be2f9dbbd83d9b8d44c24572963b871760ee9e324a8ee19fb7ce2d048bb42d`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8532f713ee106b2b632309f0acecb40ee9c2c43593e378eb6fb9d0689cc9da0`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cc5af00dc0db3393621f64cb00d3d848b29047fc170d22f05927776609f845`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac2a3874f0f99b71520054772dda524959255bda166386891aa9fd735ecbe`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:0f23add9a661047f110325fd51ddf14e2eedab9faadda9d01134d72289416b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:ff710ffe1f98d84c0411624d30bdbd9205ff1afc644d6337e743812a856969aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.7 MB (409733665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188351f00031f80235570e6d6c514c3f7dada7342047ced42ef2f58de68594ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 13 Oct 2017 20:08:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_VERSION=11.0
# Fri, 13 Oct 2017 20:08:20 GMT
ENV ODOO_RELEASE=20171013
# Fri, 13 Oct 2017 20:09:14 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '596e01ef47fda076f086791a12eb360af42d9a14 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 13 Oct 2017 20:09:15 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 13 Oct 2017 20:09:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 13 Oct 2017 20:09:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 13 Oct 2017 20:09:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 13 Oct 2017 20:09:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 13 Oct 2017 20:09:17 GMT
USER [odoo]
# Fri, 13 Oct 2017 20:09:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Oct 2017 20:09:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f55b8eb80bd608362b4eaa8cb72cf34705d24202f3f5fa3b99d20ea80b3d2c3`  
		Last Modified: Fri, 13 Oct 2017 20:15:51 GMT  
		Size: 221.3 MB (221255948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaee36ec887882475ca1673281297487b49f92ef3d1d5f98c6ae511ac9c4243`  
		Last Modified: Fri, 13 Oct 2017 20:15:42 GMT  
		Size: 143.3 MB (143346797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba4dc94124701bb9e8e6648e67e4c98959278ef1cc0ee9c8e3546f8f3e8832b`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb837b81001c704098efb35fe643567de4649241a8f76973dc463c06292d86`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e91f6f7e03bfdab2286b5dc5a84b9c2ab5619e3c49c952b0c327d552c0df5`  
		Last Modified: Fri, 13 Oct 2017 20:15:16 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3636e3fe4b3c3a50856829ee86ea5eac6b24a54f2abc44c3fd570d862e4f4f5`  
		Last Modified: Fri, 13 Oct 2017 20:15:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
