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
$ docker pull odoo@sha256:82332ef79f43fa8a6e6e9702d05223b1248234fd4cff179e221197e182eb072b
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267965344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046b0d5ff93dbe168fe991f0fb7dd64355fe0fdb37a9ce6a96f87c0aaf4c6a32`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:58:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_VERSION=8.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 23:00:12 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '1f0312e64731fd8f6c0d8bf9b3516ff1b13d01f2 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 23:00:13 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Tue, 08 Nov 2016 23:00:14 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 08 Nov 2016 23:00:15 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:00:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 23:00:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 23:00:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 23:00:17 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:00:17 GMT
USER [odoo]
# Tue, 08 Nov 2016 23:00:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 23:00:18 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5899f370b0b6e78b65caa2a45ede6c009f2e1642e3eadb71e72fee5bc2029475`  
		Last Modified: Tue, 08 Nov 2016 23:01:00 GMT  
		Size: 86.3 MB (86282446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927c4347a3b0093da6bdd5e4d849e46c9a8be8bdae40ade2921e2db982fbcfe`  
		Last Modified: Tue, 08 Nov 2016 23:01:10 GMT  
		Size: 130.3 MB (130324185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a3eeadf19cc6a7ebac8ef33f6fd2472ecce3b78682eb9070687d6974671d5`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6ac2415be0aa9511a5c268187d4c8f2cae1a744afaa5b82ed7b92e3d0235d`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81f42f9c9942a38b78093557efac7fdd8817e2d4de617463ae79c84d4e63c27`  
		Last Modified: Tue, 08 Nov 2016 23:00:29 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9417fb60d2159b001e62703eaf602540153a809c7a47a8f864219ca27d7b98`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:82332ef79f43fa8a6e6e9702d05223b1248234fd4cff179e221197e182eb072b
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267965344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046b0d5ff93dbe168fe991f0fb7dd64355fe0fdb37a9ce6a96f87c0aaf4c6a32`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:58:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_VERSION=8.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 23:00:12 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '1f0312e64731fd8f6c0d8bf9b3516ff1b13d01f2 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 23:00:13 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Tue, 08 Nov 2016 23:00:14 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 08 Nov 2016 23:00:15 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:00:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 23:00:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 23:00:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 23:00:17 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:00:17 GMT
USER [odoo]
# Tue, 08 Nov 2016 23:00:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 23:00:18 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5899f370b0b6e78b65caa2a45ede6c009f2e1642e3eadb71e72fee5bc2029475`  
		Last Modified: Tue, 08 Nov 2016 23:01:00 GMT  
		Size: 86.3 MB (86282446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927c4347a3b0093da6bdd5e4d849e46c9a8be8bdae40ade2921e2db982fbcfe`  
		Last Modified: Tue, 08 Nov 2016 23:01:10 GMT  
		Size: 130.3 MB (130324185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a3eeadf19cc6a7ebac8ef33f6fd2472ecce3b78682eb9070687d6974671d5`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff6ac2415be0aa9511a5c268187d4c8f2cae1a744afaa5b82ed7b92e3d0235d`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81f42f9c9942a38b78093557efac7fdd8817e2d4de617463ae79c84d4e63c27`  
		Last Modified: Tue, 08 Nov 2016 23:00:29 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9417fb60d2159b001e62703eaf602540153a809c7a47a8f864219ca27d7b98`  
		Last Modified: Tue, 08 Nov 2016 23:00:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:750b817945b9807cc34930f5883508dc31964f86988f132c151cce644eaaaf75
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274927302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3b556a11e07b8c9e488833aa4b62c437b11b10c8d13939b26165e75481d44a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 23:01:31 GMT
ENV ODOO_VERSION=9.0
# Tue, 08 Nov 2016 23:01:32 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 23:02:49 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'b5f88c06d8ba3475fa5ef15d93e504891c648f8e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 23:02:58 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Tue, 08 Nov 2016 23:02:59 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 08 Nov 2016 23:03:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:03:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 23:03:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 23:03:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 23:03:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:03:02 GMT
USER [odoo]
# Tue, 08 Nov 2016 23:03:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 23:03:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7d50f7cfb599a7e5264615965011f928cc3cc64917a2cd7f02ac80d969f5d`  
		Last Modified: Tue, 08 Nov 2016 23:03:52 GMT  
		Size: 137.6 MB (137587975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f1a77f10d36285b80dcd6c55ef749bfc71ef10eacfb3bbed9e933197be947a`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9322d1c1229712ab73674be9cdb87b9fad0cbd385db798ff953b7af51d6dddec`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc0894a48bd0a06117c54d78b58c4147b1d95c7e00be8e73ae45b0a466175e`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab83e359b1b156fb9af2fe52210e8def839db682d7f359dcce763f761318b2c`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:750b817945b9807cc34930f5883508dc31964f86988f132c151cce644eaaaf75
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274927302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3b556a11e07b8c9e488833aa4b62c437b11b10c8d13939b26165e75481d44a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 23:01:31 GMT
ENV ODOO_VERSION=9.0
# Tue, 08 Nov 2016 23:01:32 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 23:02:49 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'b5f88c06d8ba3475fa5ef15d93e504891c648f8e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 23:02:58 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Tue, 08 Nov 2016 23:02:59 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 08 Nov 2016 23:03:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:03:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 23:03:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 23:03:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 23:03:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 08 Nov 2016 23:03:02 GMT
USER [odoo]
# Tue, 08 Nov 2016 23:03:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 23:03:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7d50f7cfb599a7e5264615965011f928cc3cc64917a2cd7f02ac80d969f5d`  
		Last Modified: Tue, 08 Nov 2016 23:03:52 GMT  
		Size: 137.6 MB (137587975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f1a77f10d36285b80dcd6c55ef749bfc71ef10eacfb3bbed9e933197be947a`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9322d1c1229712ab73674be9cdb87b9fad0cbd385db798ff953b7af51d6dddec`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc0894a48bd0a06117c54d78b58c4147b1d95c7e00be8e73ae45b0a466175e`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab83e359b1b156fb9af2fe52210e8def839db682d7f359dcce763f761318b2c`  
		Last Modified: Tue, 08 Nov 2016 23:03:15 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:67a70f33f872191026652dea558a011e515bd9f8d927936b002846c7011534db
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271725985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6ab1d5ab079c5aa5b1d231fa16fd43c761315109f283e39efa5d8e0da0f2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 22:56:27 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 22:56:29 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Tue, 08 Nov 2016 22:56:30 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 08 Nov 2016 22:56:30 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 22:56:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 22:56:39 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 22:56:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:40 GMT
USER [odoo]
# Tue, 08 Nov 2016 22:56:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 22:56:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5bdc0e2984e73535674ba9a9348daa952507b121b0c57bc257ba641084ac4d`  
		Last Modified: Tue, 08 Nov 2016 22:57:32 GMT  
		Size: 134.4 MB (134386685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b63fc82895de9630806a206e272e5fd182978acf17f0731c350325765d9f4`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d79a491671920735cb6ec5bbb61dbd109e8b6322ec1e09ac3d1ddf96bc2541f`  
		Last Modified: Tue, 08 Nov 2016 22:56:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1aace623b30be4d946b0dc885fdc821ab0a1758d2e15c3d26596bafe01155f`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e7da9e54779cdb3207d0b891187ccfc2f5825c99b282adce88f27760f1ace`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:67a70f33f872191026652dea558a011e515bd9f8d927936b002846c7011534db
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271725985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6ab1d5ab079c5aa5b1d231fa16fd43c761315109f283e39efa5d8e0da0f2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 22:56:27 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 22:56:29 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Tue, 08 Nov 2016 22:56:30 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 08 Nov 2016 22:56:30 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 22:56:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 22:56:39 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 22:56:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:40 GMT
USER [odoo]
# Tue, 08 Nov 2016 22:56:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 22:56:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5bdc0e2984e73535674ba9a9348daa952507b121b0c57bc257ba641084ac4d`  
		Last Modified: Tue, 08 Nov 2016 22:57:32 GMT  
		Size: 134.4 MB (134386685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b63fc82895de9630806a206e272e5fd182978acf17f0731c350325765d9f4`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d79a491671920735cb6ec5bbb61dbd109e8b6322ec1e09ac3d1ddf96bc2541f`  
		Last Modified: Tue, 08 Nov 2016 22:56:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1aace623b30be4d946b0dc885fdc821ab0a1758d2e15c3d26596bafe01155f`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e7da9e54779cdb3207d0b891187ccfc2f5825c99b282adce88f27760f1ace`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:67a70f33f872191026652dea558a011e515bd9f8d927936b002846c7011534db
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271725985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6ab1d5ab079c5aa5b1d231fa16fd43c761315109f283e39efa5d8e0da0f2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_RELEASE=20161103
# Tue, 08 Nov 2016 22:56:27 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 08 Nov 2016 22:56:29 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Tue, 08 Nov 2016 22:56:30 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 08 Nov 2016 22:56:30 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 08 Nov 2016 22:56:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Nov 2016 22:56:39 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 08 Nov 2016 22:56:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Nov 2016 22:56:40 GMT
USER [odoo]
# Tue, 08 Nov 2016 22:56:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 22:56:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5bdc0e2984e73535674ba9a9348daa952507b121b0c57bc257ba641084ac4d`  
		Last Modified: Tue, 08 Nov 2016 22:57:32 GMT  
		Size: 134.4 MB (134386685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b63fc82895de9630806a206e272e5fd182978acf17f0731c350325765d9f4`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d79a491671920735cb6ec5bbb61dbd109e8b6322ec1e09ac3d1ddf96bc2541f`  
		Last Modified: Tue, 08 Nov 2016 22:56:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1aace623b30be4d946b0dc885fdc821ab0a1758d2e15c3d26596bafe01155f`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e7da9e54779cdb3207d0b891187ccfc2f5825c99b282adce88f27760f1ace`  
		Last Modified: Tue, 08 Nov 2016 22:56:52 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
