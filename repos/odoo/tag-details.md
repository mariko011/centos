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
$ docker pull odoo@sha256:11d729e52e0479108e22b9784ce62722a36a420f92cad473b4120ef395cb7880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:65c05382cbf26e2ed6bd1aa6672e82dc0d7da119a44a4f4f3b29eacc4425578d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275590447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88ae88d69c09995ce856ba68c3f69f45d5453370ea0abfa97bcc38cc4a30d48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:17:58 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:18:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 12 Dec 2017 05:20:28 GMT
ENV ODOO_VERSION=10.0
# Tue, 12 Dec 2017 05:20:28 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:21:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:21:31 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 12 Dec 2017 05:21:32 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 12 Dec 2017 05:21:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:21:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:21:45 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:21:46 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:21:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b641c2e41be91034a2d7c9bf3262b217cf2867d5ceec0f4a96cd5774cc1770d`  
		Last Modified: Tue, 12 Dec 2017 05:24:31 GMT  
		Size: 88.7 MB (88739172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe32acca0c18c3c8bf10b94d6fb77940eb27720a5a8c6350bd4918d1f8d5a0ca`  
		Last Modified: Tue, 12 Dec 2017 05:32:40 GMT  
		Size: 134.2 MB (134249690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209ff67dfb3a3e9707b7beb009eb210de47bb5f78cccbeba68204516db8d41c9`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d155425e2fff2ac6a65bdb48635ab3d396a5a3469dd2595d74d88d29709985ed`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3689d5d7109bf28499f90966d5b651821cf06423a61889e313c3660773b2a0eb`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad06d572040545ab5e615bf227f5b71bb1355f64db182ea3a52c5b769a50ff13`  
		Last Modified: Tue, 12 Dec 2017 05:32:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:11d729e52e0479108e22b9784ce62722a36a420f92cad473b4120ef395cb7880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:65c05382cbf26e2ed6bd1aa6672e82dc0d7da119a44a4f4f3b29eacc4425578d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275590447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88ae88d69c09995ce856ba68c3f69f45d5453370ea0abfa97bcc38cc4a30d48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:17:58 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:18:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 12 Dec 2017 05:20:28 GMT
ENV ODOO_VERSION=10.0
# Tue, 12 Dec 2017 05:20:28 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:21:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:21:31 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 12 Dec 2017 05:21:32 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 12 Dec 2017 05:21:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:21:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:21:45 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:21:46 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:21:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b641c2e41be91034a2d7c9bf3262b217cf2867d5ceec0f4a96cd5774cc1770d`  
		Last Modified: Tue, 12 Dec 2017 05:24:31 GMT  
		Size: 88.7 MB (88739172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe32acca0c18c3c8bf10b94d6fb77940eb27720a5a8c6350bd4918d1f8d5a0ca`  
		Last Modified: Tue, 12 Dec 2017 05:32:40 GMT  
		Size: 134.2 MB (134249690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209ff67dfb3a3e9707b7beb009eb210de47bb5f78cccbeba68204516db8d41c9`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d155425e2fff2ac6a65bdb48635ab3d396a5a3469dd2595d74d88d29709985ed`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3689d5d7109bf28499f90966d5b651821cf06423a61889e313c3660773b2a0eb`  
		Last Modified: Tue, 12 Dec 2017 05:31:58 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad06d572040545ab5e615bf227f5b71bb1355f64db182ea3a52c5b769a50ff13`  
		Last Modified: Tue, 12 Dec 2017 05:32:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:b9a67408206339333033ffa94c3a68de415c4b51f7d6749008212c500c44b21a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:0c9766322bfe1f008c461616a05b836dad306285ddacaba536edf06ca342a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.1 MB (410078207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84f71273a4776f95921bcc6efa2d686abaeb68db539621ca9facefb9278e49f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:22:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:22:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 12 Dec 2017 05:22:37 GMT
ENV ODOO_VERSION=11.0
# Tue, 12 Dec 2017 05:22:38 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:23:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:23:52 GMT
RUN pip3 install num2words
# Tue, 12 Dec 2017 05:23:53 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 12 Dec 2017 05:23:53 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 12 Dec 2017 05:23:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:23:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:23:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:23:55 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:23:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:23:55 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:23:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:23:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70518ac76bc0293637ea81d1936563cca08dea6c643b5a8507e1c621c370fb8c`  
		Last Modified: Tue, 12 Dec 2017 05:35:39 GMT  
		Size: 221.4 MB (221395553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ddd43e2f21285229c5a44665791d71349d8e84486c8b9fc888681db8dec4cb`  
		Last Modified: Tue, 12 Dec 2017 05:35:47 GMT  
		Size: 143.4 MB (143415721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153240bdcb5d8327a58cf45280e926b49ec2e070dda17c573d081fbd19b3b6b2`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 143.5 KB (143474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bf7c8edc3a1eba9cb635685916170232323b1c1426986d9b4877e5d57b0843`  
		Last Modified: Tue, 12 Dec 2017 05:34:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f81137c260340f525b75d87b0a2bf9048a84cafd3d1c02c95620ca027be0fc`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d1a10b7c11c9766b2e877a54a28a7c1016070afb10f8bc80dd217b7707019`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b240f22ede2a7b9f9677cfd311b53b637147e6d5fb21f189dd910225c9e0689e`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:b9a67408206339333033ffa94c3a68de415c4b51f7d6749008212c500c44b21a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:0c9766322bfe1f008c461616a05b836dad306285ddacaba536edf06ca342a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.1 MB (410078207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84f71273a4776f95921bcc6efa2d686abaeb68db539621ca9facefb9278e49f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:22:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:22:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 12 Dec 2017 05:22:37 GMT
ENV ODOO_VERSION=11.0
# Tue, 12 Dec 2017 05:22:38 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:23:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:23:52 GMT
RUN pip3 install num2words
# Tue, 12 Dec 2017 05:23:53 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 12 Dec 2017 05:23:53 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 12 Dec 2017 05:23:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:23:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:23:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:23:55 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:23:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 12 Dec 2017 05:23:55 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:23:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:23:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70518ac76bc0293637ea81d1936563cca08dea6c643b5a8507e1c621c370fb8c`  
		Last Modified: Tue, 12 Dec 2017 05:35:39 GMT  
		Size: 221.4 MB (221395553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ddd43e2f21285229c5a44665791d71349d8e84486c8b9fc888681db8dec4cb`  
		Last Modified: Tue, 12 Dec 2017 05:35:47 GMT  
		Size: 143.4 MB (143415721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153240bdcb5d8327a58cf45280e926b49ec2e070dda17c573d081fbd19b3b6b2`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 143.5 KB (143474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bf7c8edc3a1eba9cb635685916170232323b1c1426986d9b4877e5d57b0843`  
		Last Modified: Tue, 12 Dec 2017 05:34:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f81137c260340f525b75d87b0a2bf9048a84cafd3d1c02c95620ca027be0fc`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d1a10b7c11c9766b2e877a54a28a7c1016070afb10f8bc80dd217b7707019`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b240f22ede2a7b9f9677cfd311b53b637147e6d5fb21f189dd910225c9e0689e`  
		Last Modified: Tue, 12 Dec 2017 05:34:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:f6e5156d3576e4c5afd559b7d024838c45af60bb5f27a751bc6e9e440fc9fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:14057ad805eefdff5c1a67db00384fee147e38ed7177a28ceb567500d8aeb34e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289734789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dd39ab2a21e11a2ceef589acb217e85ac70554683710ae0a0db772e2f65165`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:17:58 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:18:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 12 Dec 2017 05:18:56 GMT
ENV ODOO_VERSION=9.0
# Tue, 12 Dec 2017 05:18:56 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:19:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:19:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 12 Dec 2017 05:19:56 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 12 Dec 2017 05:19:57 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 12 Dec 2017 05:19:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:19:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:19:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:19:59 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 12 Dec 2017 05:20:00 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:20:00 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b641c2e41be91034a2d7c9bf3262b217cf2867d5ceec0f4a96cd5774cc1770d`  
		Last Modified: Tue, 12 Dec 2017 05:24:31 GMT  
		Size: 88.7 MB (88739172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa176573ba9349f293a7fde7c4a3a66058fcc7dd24a00c954a5061600a32de`  
		Last Modified: Tue, 12 Dec 2017 05:25:03 GMT  
		Size: 148.4 MB (148394011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a64134e48da4b731e7fd8ded2a8837edf82aeb64dc2adae035d9bfafc152c18`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d7fb60b61c4779f4bd8a27a2c65bf225a2b7e1951a0f2849eedba673a699`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7348fbcc9d9dd844a77c4eca7c72efecd729c097099577829f5ea47d793b29`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56dbef9e7618fefb49b24aec32223447c642f8c01f3aaa739d929667b4470b9`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:f6e5156d3576e4c5afd559b7d024838c45af60bb5f27a751bc6e9e440fc9fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:14057ad805eefdff5c1a67db00384fee147e38ed7177a28ceb567500d8aeb34e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289734789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dd39ab2a21e11a2ceef589acb217e85ac70554683710ae0a0db772e2f65165`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:17:58 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 12 Dec 2017 05:18:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 12 Dec 2017 05:18:56 GMT
ENV ODOO_VERSION=9.0
# Tue, 12 Dec 2017 05:18:56 GMT
ENV ODOO_RELEASE=20171030
# Tue, 12 Dec 2017 05:19:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 12 Dec 2017 05:19:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 12 Dec 2017 05:19:56 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 12 Dec 2017 05:19:57 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 12 Dec 2017 05:19:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 12 Dec 2017 05:19:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 12 Dec 2017 05:19:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 12 Dec 2017 05:19:59 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 12 Dec 2017 05:20:00 GMT
USER [odoo]
# Tue, 12 Dec 2017 05:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 05:20:00 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b641c2e41be91034a2d7c9bf3262b217cf2867d5ceec0f4a96cd5774cc1770d`  
		Last Modified: Tue, 12 Dec 2017 05:24:31 GMT  
		Size: 88.7 MB (88739172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa176573ba9349f293a7fde7c4a3a66058fcc7dd24a00c954a5061600a32de`  
		Last Modified: Tue, 12 Dec 2017 05:25:03 GMT  
		Size: 148.4 MB (148394011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a64134e48da4b731e7fd8ded2a8837edf82aeb64dc2adae035d9bfafc152c18`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d7fb60b61c4779f4bd8a27a2c65bf225a2b7e1951a0f2849eedba673a699`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7348fbcc9d9dd844a77c4eca7c72efecd729c097099577829f5ea47d793b29`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56dbef9e7618fefb49b24aec32223447c642f8c01f3aaa739d929667b4470b9`  
		Last Modified: Tue, 12 Dec 2017 05:24:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:95aec47af43b3f123fe556765d48be12593c8883bfa252a0b12a95e6615c185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:6e33073ad01674d72b89d734678cfb8600908d96cf9e38d6374a9f54098f223e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409978009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f7776c925e4d980fe9c2a3a89d32deb4b3cd0e1e542bbc0471aabd7bdd3b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 13:03:10 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:03:11 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 13:03:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_VERSION=11.0
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:05:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:05:15 GMT
RUN pip3 install num2words
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 04 Nov 2017 13:05:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:05:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:05:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:05:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:18 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:05:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:05:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda220ce0bb6cf4771670ef3f8c0be3ed08f3113971951c1b5d046409aaaafaa`  
		Last Modified: Sat, 04 Nov 2017 13:08:36 GMT  
		Size: 221.3 MB (221309447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ac0c1e3670eb60892f4a8a569fe6493002eb951751d5e3c112499e39ea4ac`  
		Last Modified: Sat, 04 Nov 2017 13:08:42 GMT  
		Size: 143.4 MB (143414130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a500a6e748c4a3c39506e68a95cd211049d873bc147b8188290e561bf3f2a02`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 123.5 KB (123511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a555b36c410cb47b988b8ecffb55bc4ca4635c52a8470c7e6eb9ffcf65da05`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb65551d43c60fab9414d459f731828401cbac33320cd68ab1a983bd3c0820`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3a56a5e64e2af8f71f23309139b2bab3477065cbed954fbdf07451d87be25`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49f56a4c138661d7d2d63b0762fdfa5348f481b626be1738cbf2c5fbe116f69`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
