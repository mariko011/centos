<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:8.0`](#odoo80)
-	[`odoo:8`](#odoo8)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:9`](#odoo9)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:10`](#odoo10)
-	[`odoo:latest`](#odoolatest)

## `odoo:8.0`

```console
$ docker pull odoo@sha256:89f7c974282bb23cebbdfe15b9cd66bd0c80518a756cd2c55bf6bf51e2ea9d79
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268899922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bee59d9ed1b4b691ac544dba5fd56c628969ce60f60d4cdb568bdd00c45567`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:19:39 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:19:39 GMT
ENV ODOO_VERSION=8.0
# Tue, 28 Feb 2017 15:19:40 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:20:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:20:47 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 28 Feb 2017 15:20:48 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:20:49 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:20:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:20:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:20:51 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:20:52 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:20:52 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:20:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:20:53 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070769cf43887b1fbb3d6ea4d74e78814c8f40309d394fc8953b39a968229e40`  
		Last Modified: Thu, 02 Mar 2017 02:35:45 GMT  
		Size: 86.3 MB (86289909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fc0937867da438dc9b9f19b7ea68616db5b784323366160514ed3597e4039`  
		Last Modified: Thu, 02 Mar 2017 02:36:09 GMT  
		Size: 131.2 MB (131244734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f470e049a3dda0b57800d133d60d3fc84413e15d24bbbcb5441b38660e06f31`  
		Last Modified: Thu, 02 Mar 2017 02:35:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61faa8907860e289493af097bedb03c35c928df6910ff7e6971929c294ea7f`  
		Last Modified: Thu, 02 Mar 2017 02:35:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53b91f85ba2875be94b42ea720b9e4f5b56bfff75159b3f3c7a9d6731e80054`  
		Last Modified: Thu, 02 Mar 2017 02:35:14 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd857ebbd905b289719bfc7111c6a842120c67a08d1df4cd1610da722b83654f`  
		Last Modified: Thu, 02 Mar 2017 02:35:15 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:89f7c974282bb23cebbdfe15b9cd66bd0c80518a756cd2c55bf6bf51e2ea9d79
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268899922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bee59d9ed1b4b691ac544dba5fd56c628969ce60f60d4cdb568bdd00c45567`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:19:39 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:19:39 GMT
ENV ODOO_VERSION=8.0
# Tue, 28 Feb 2017 15:19:40 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:20:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:20:47 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 28 Feb 2017 15:20:48 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:20:49 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:20:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:20:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:20:51 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:20:52 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:20:52 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:20:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:20:53 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070769cf43887b1fbb3d6ea4d74e78814c8f40309d394fc8953b39a968229e40`  
		Last Modified: Thu, 02 Mar 2017 02:35:45 GMT  
		Size: 86.3 MB (86289909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fc0937867da438dc9b9f19b7ea68616db5b784323366160514ed3597e4039`  
		Last Modified: Thu, 02 Mar 2017 02:36:09 GMT  
		Size: 131.2 MB (131244734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f470e049a3dda0b57800d133d60d3fc84413e15d24bbbcb5441b38660e06f31`  
		Last Modified: Thu, 02 Mar 2017 02:35:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a61faa8907860e289493af097bedb03c35c928df6910ff7e6971929c294ea7f`  
		Last Modified: Thu, 02 Mar 2017 02:35:14 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53b91f85ba2875be94b42ea720b9e4f5b56bfff75159b3f3c7a9d6731e80054`  
		Last Modified: Thu, 02 Mar 2017 02:35:14 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd857ebbd905b289719bfc7111c6a842120c67a08d1df4cd1610da722b83654f`  
		Last Modified: Thu, 02 Mar 2017 02:35:15 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:d569d4afb522202b4f61b2d20ed46a56b75984ad4ed022d7504e5c426b3560a6
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284634970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203506e8298b4955cd69f91c83ac42bdad2fb7a0e791717cd84a130e4b06f663`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:17:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:20:53 GMT
ENV ODOO_VERSION=9.0
# Tue, 28 Feb 2017 15:20:54 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:22:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:22:02 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 28 Feb 2017 15:22:03 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:22:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:22:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:22:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:22:05 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:22:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:22:06 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:22:06 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4475ab932835484b6000af8884b8677a51f0b54abdcc430b56eb123e690a2b25`  
		Last Modified: Thu, 02 Mar 2017 02:33:55 GMT  
		Size: 86.7 MB (86671117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d408194b610f7a2207c84238b2f02951fda7d78bca2e75af4906a9e49b9e6`  
		Last Modified: Thu, 02 Mar 2017 02:37:45 GMT  
		Size: 146.6 MB (146598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7459d413988d19edfcb476b217f361f9db6c988f07c353cdb2dc12f9f9f591`  
		Last Modified: Thu, 02 Mar 2017 02:36:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc53602a5ba7a0218d54cc3ed91befea7a8c0f74449410962cc63996421b6d6`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68321d692ccdb93330af918b825cda4d3b2cb02ae022cfa9fd6262134c88c78`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb22b97e2d476f708f97cf09b3084133d5169111f210a52de61ab2501e673ca`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:d569d4afb522202b4f61b2d20ed46a56b75984ad4ed022d7504e5c426b3560a6
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284634970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203506e8298b4955cd69f91c83ac42bdad2fb7a0e791717cd84a130e4b06f663`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:17:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:20:53 GMT
ENV ODOO_VERSION=9.0
# Tue, 28 Feb 2017 15:20:54 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:22:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:22:02 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 28 Feb 2017 15:22:03 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:22:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:22:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:22:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:22:05 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:22:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 28 Feb 2017 15:22:06 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:22:06 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4475ab932835484b6000af8884b8677a51f0b54abdcc430b56eb123e690a2b25`  
		Last Modified: Thu, 02 Mar 2017 02:33:55 GMT  
		Size: 86.7 MB (86671117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d408194b610f7a2207c84238b2f02951fda7d78bca2e75af4906a9e49b9e6`  
		Last Modified: Thu, 02 Mar 2017 02:37:45 GMT  
		Size: 146.6 MB (146598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7459d413988d19edfcb476b217f361f9db6c988f07c353cdb2dc12f9f9f591`  
		Last Modified: Thu, 02 Mar 2017 02:36:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc53602a5ba7a0218d54cc3ed91befea7a8c0f74449410962cc63996421b6d6`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68321d692ccdb93330af918b825cda4d3b2cb02ae022cfa9fd6262134c88c78`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb22b97e2d476f708f97cf09b3084133d5169111f210a52de61ab2501e673ca`  
		Last Modified: Thu, 02 Mar 2017 02:36:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:0733f81ab212a7bf8c789d6e502d5a81805dcbb578d04456b7695b79c624e60f
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269280124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0802ba3bc5540cb1201eadd2964d81880bcf1ef0a1a16704e22f1a8ae199ae4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:17:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:18:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:18:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 28 Feb 2017 15:18:49 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:18:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:18:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:18:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:18:52 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:53 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:18:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:18:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4475ab932835484b6000af8884b8677a51f0b54abdcc430b56eb123e690a2b25`  
		Last Modified: Thu, 02 Mar 2017 02:33:55 GMT  
		Size: 86.7 MB (86671117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea302311482ea980d83ed334e611b166e719fe221e4aa252f7140183f756d2`  
		Last Modified: Thu, 02 Mar 2017 02:34:15 GMT  
		Size: 131.2 MB (131243772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcf5f63e50a95668ec009dc8abb18bcc4c5abd5f2724b9ea2e8d1d8efe483d1`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4399df17d1e813a690a6ccc6f8aab2149c7a09db7e02a1d1388ae72fdf2262cf`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774606abaed88ed0ff455946c1c267435bb5a544d4fbae2688fc9773a55cf09b`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4d07e5cb06e10d567fd33689259d3783fe97206a4ab459b1b9db223466e9c0`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:0733f81ab212a7bf8c789d6e502d5a81805dcbb578d04456b7695b79c624e60f
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269280124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0802ba3bc5540cb1201eadd2964d81880bcf1ef0a1a16704e22f1a8ae199ae4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:17:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:18:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:18:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 28 Feb 2017 15:18:49 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:18:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:18:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:18:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:18:52 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:53 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:18:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:18:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4475ab932835484b6000af8884b8677a51f0b54abdcc430b56eb123e690a2b25`  
		Last Modified: Thu, 02 Mar 2017 02:33:55 GMT  
		Size: 86.7 MB (86671117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea302311482ea980d83ed334e611b166e719fe221e4aa252f7140183f756d2`  
		Last Modified: Thu, 02 Mar 2017 02:34:15 GMT  
		Size: 131.2 MB (131243772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcf5f63e50a95668ec009dc8abb18bcc4c5abd5f2724b9ea2e8d1d8efe483d1`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4399df17d1e813a690a6ccc6f8aab2149c7a09db7e02a1d1388ae72fdf2262cf`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774606abaed88ed0ff455946c1c267435bb5a544d4fbae2688fc9773a55cf09b`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4d07e5cb06e10d567fd33689259d3783fe97206a4ab459b1b9db223466e9c0`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:0733f81ab212a7bf8c789d6e502d5a81805dcbb578d04456b7695b79c624e60f
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269280124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0802ba3bc5540cb1201eadd2964d81880bcf1ef0a1a16704e22f1a8ae199ae4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:16:59 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 28 Feb 2017 15:17:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 28 Feb 2017 15:17:41 GMT
ENV ODOO_RELEASE=20170207
# Tue, 28 Feb 2017 15:18:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 28 Feb 2017 15:18:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 28 Feb 2017 15:18:49 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 28 Feb 2017 15:18:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 28 Feb 2017 15:18:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 28 Feb 2017 15:18:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 28 Feb 2017 15:18:52 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 28 Feb 2017 15:18:53 GMT
USER [odoo]
# Tue, 28 Feb 2017 15:18:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 15:18:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4475ab932835484b6000af8884b8677a51f0b54abdcc430b56eb123e690a2b25`  
		Last Modified: Thu, 02 Mar 2017 02:33:55 GMT  
		Size: 86.7 MB (86671117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea302311482ea980d83ed334e611b166e719fe221e4aa252f7140183f756d2`  
		Last Modified: Thu, 02 Mar 2017 02:34:15 GMT  
		Size: 131.2 MB (131243772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcf5f63e50a95668ec009dc8abb18bcc4c5abd5f2724b9ea2e8d1d8efe483d1`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4399df17d1e813a690a6ccc6f8aab2149c7a09db7e02a1d1388ae72fdf2262cf`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774606abaed88ed0ff455946c1c267435bb5a544d4fbae2688fc9773a55cf09b`  
		Last Modified: Thu, 02 Mar 2017 02:33:25 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4d07e5cb06e10d567fd33689259d3783fe97206a4ab459b1b9db223466e9c0`  
		Last Modified: Thu, 02 Mar 2017 02:33:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
