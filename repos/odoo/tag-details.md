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
$ docker pull odoo@sha256:3ee7b3d7c430eb652317ee17fe20664a2a938e378646e458941cc7d5c5c54c4d
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269049305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34613f42255b771306d9e2a8b3d05de90c554be9a20683aad14849f95a5a5d3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:11:02 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:11:02 GMT
ENV ODOO_VERSION=8.0
# Tue, 21 Mar 2017 22:11:03 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:11:55 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:11:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 21 Mar 2017 22:11:57 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:11:58 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:11:59 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:11:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:12:00 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:12:00 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:12:00 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:12:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:12:01 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f2c48583e69259027357cc93c3f74d876d958efe12e791856d727a52cf0a84`  
		Last Modified: Thu, 23 Mar 2017 23:27:24 GMT  
		Size: 86.4 MB (86361126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901f513d3f368acdbbb157cbee91241632d0688031d71f6f4b8095e8e59706f6`  
		Last Modified: Thu, 23 Mar 2017 23:27:48 GMT  
		Size: 131.2 MB (131247799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ec710ec91e86eb6c3901ae6c773cf4cb70e440a04dd676f05ebcce16f119f4`  
		Last Modified: Thu, 23 Mar 2017 23:26:52 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f5d92a2e2905039a0cad029f02237479df10180ee20f0d3669c8106f8b1a46`  
		Last Modified: Thu, 23 Mar 2017 23:26:52 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c539f67c120a59a830411fb6d57e518c4ebeacded85fc2210565a92759fe5`  
		Last Modified: Thu, 23 Mar 2017 23:26:53 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa270374a9b9bd16bd84a0027fe54bbc19afac422140f34cba293a4effa90937`  
		Last Modified: Thu, 23 Mar 2017 23:26:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:3ee7b3d7c430eb652317ee17fe20664a2a938e378646e458941cc7d5c5c54c4d
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269049305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34613f42255b771306d9e2a8b3d05de90c554be9a20683aad14849f95a5a5d3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:11:02 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:11:02 GMT
ENV ODOO_VERSION=8.0
# Tue, 21 Mar 2017 22:11:03 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:11:55 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:11:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 21 Mar 2017 22:11:57 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:11:58 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:11:59 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:11:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:12:00 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:12:00 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:12:00 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:12:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:12:01 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f2c48583e69259027357cc93c3f74d876d958efe12e791856d727a52cf0a84`  
		Last Modified: Thu, 23 Mar 2017 23:27:24 GMT  
		Size: 86.4 MB (86361126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901f513d3f368acdbbb157cbee91241632d0688031d71f6f4b8095e8e59706f6`  
		Last Modified: Thu, 23 Mar 2017 23:27:48 GMT  
		Size: 131.2 MB (131247799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ec710ec91e86eb6c3901ae6c773cf4cb70e440a04dd676f05ebcce16f119f4`  
		Last Modified: Thu, 23 Mar 2017 23:26:52 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f5d92a2e2905039a0cad029f02237479df10180ee20f0d3669c8106f8b1a46`  
		Last Modified: Thu, 23 Mar 2017 23:26:52 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c539f67c120a59a830411fb6d57e518c4ebeacded85fc2210565a92759fe5`  
		Last Modified: Thu, 23 Mar 2017 23:26:53 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa270374a9b9bd16bd84a0027fe54bbc19afac422140f34cba293a4effa90937`  
		Last Modified: Thu, 23 Mar 2017 23:26:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:8b3181f47f76d0214b2187628aa7eee6f08e861236eeeaea9c00c2b71cffe0f2
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284780314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736ca118a07481c670890e4f69a0908e1a4568497af685391ed1d818275b1564`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:09:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:12:02 GMT
ENV ODOO_VERSION=9.0
# Tue, 21 Mar 2017 22:12:02 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:13:04 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:13:06 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 21 Mar 2017 22:13:06 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:13:07 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:13:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:13:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:13:09 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:13:09 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:13:10 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:13:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:13:11 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dcf899a6ab68c9c128b1fd596a90de99976189919ae48d9eabc6df3592a67c`  
		Last Modified: Thu, 23 Mar 2017 23:25:24 GMT  
		Size: 86.7 MB (86741158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbb3b8f3d0e946c74b598939189db023fc7f50b62b796bdbe6e74abd25cc62a`  
		Last Modified: Thu, 23 Mar 2017 23:29:34 GMT  
		Size: 146.6 MB (146598785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25de4304e062e1ad28cfd079a6d42e3db3f202b9c3a4f225f657f0678509113`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93933698360fa9a0ad3a357d87593089e6be726050b50f50cd789a0f1e9934ed`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e452226f781d7f9d93cec5b139c48ea934f8afa469b23f0addb09d24a35b927a`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078b7d30ca13c9678803b59e5cf0f44afc5ef99d5c07e67f54e09452feb1082`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:8b3181f47f76d0214b2187628aa7eee6f08e861236eeeaea9c00c2b71cffe0f2
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284780314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736ca118a07481c670890e4f69a0908e1a4568497af685391ed1d818275b1564`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:09:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:12:02 GMT
ENV ODOO_VERSION=9.0
# Tue, 21 Mar 2017 22:12:02 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:13:04 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:13:06 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 21 Mar 2017 22:13:06 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:13:07 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:13:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:13:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:13:09 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:13:09 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 21 Mar 2017 22:13:10 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:13:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:13:11 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dcf899a6ab68c9c128b1fd596a90de99976189919ae48d9eabc6df3592a67c`  
		Last Modified: Thu, 23 Mar 2017 23:25:24 GMT  
		Size: 86.7 MB (86741158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbb3b8f3d0e946c74b598939189db023fc7f50b62b796bdbe6e74abd25cc62a`  
		Last Modified: Thu, 23 Mar 2017 23:29:34 GMT  
		Size: 146.6 MB (146598785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25de4304e062e1ad28cfd079a6d42e3db3f202b9c3a4f225f657f0678509113`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93933698360fa9a0ad3a357d87593089e6be726050b50f50cd789a0f1e9934ed`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e452226f781d7f9d93cec5b139c48ea934f8afa469b23f0addb09d24a35b927a`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078b7d30ca13c9678803b59e5cf0f44afc5ef99d5c07e67f54e09452feb1082`  
		Last Modified: Thu, 23 Mar 2017 23:28:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:bf9981a6de22ea755ad1653faf9779d2d87c6ff5cd31b4fca1011b7060dbc2d2
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269429256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244f39eb3795e7083f7efbcb9d9bbe5dc722ba48026bb627ff4d5d2c4022ca47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:09:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:09:14 GMT
ENV ODOO_VERSION=10.0
# Tue, 21 Mar 2017 22:09:15 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:10:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:10:24 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:25 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:10:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:10:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:10:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:26 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:10:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:10:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dcf899a6ab68c9c128b1fd596a90de99976189919ae48d9eabc6df3592a67c`  
		Last Modified: Thu, 23 Mar 2017 23:25:24 GMT  
		Size: 86.7 MB (86741158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2365ffa2b21e3aaec9ebde36b1adf32d5078350743f497e08f4ffca53a2a7984`  
		Last Modified: Thu, 23 Mar 2017 23:25:49 GMT  
		Size: 131.2 MB (131247761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff1e2b7e0967db93233c5182001b91d52941a5d3760e720710501cabd9d00f`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5976fb119fe13e69a5ad546677e3636d23cf49665aa982f8575502fb862a7814`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47599552ee24c8833f37e7b7ccc652704a257e49a59c5d526a4a77d03cba0b1`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93220fff58a3162d0ae2063b578ab9eaa28963541a17633d2ea0bc8cd8b35e9`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:bf9981a6de22ea755ad1653faf9779d2d87c6ff5cd31b4fca1011b7060dbc2d2
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269429256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244f39eb3795e7083f7efbcb9d9bbe5dc722ba48026bb627ff4d5d2c4022ca47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:09:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:09:14 GMT
ENV ODOO_VERSION=10.0
# Tue, 21 Mar 2017 22:09:15 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:10:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:10:24 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:25 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:10:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:10:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:10:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:26 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:10:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:10:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dcf899a6ab68c9c128b1fd596a90de99976189919ae48d9eabc6df3592a67c`  
		Last Modified: Thu, 23 Mar 2017 23:25:24 GMT  
		Size: 86.7 MB (86741158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2365ffa2b21e3aaec9ebde36b1adf32d5078350743f497e08f4ffca53a2a7984`  
		Last Modified: Thu, 23 Mar 2017 23:25:49 GMT  
		Size: 131.2 MB (131247761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff1e2b7e0967db93233c5182001b91d52941a5d3760e720710501cabd9d00f`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5976fb119fe13e69a5ad546677e3636d23cf49665aa982f8575502fb862a7814`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47599552ee24c8833f37e7b7ccc652704a257e49a59c5d526a4a77d03cba0b1`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93220fff58a3162d0ae2063b578ab9eaa28963541a17633d2ea0bc8cd8b35e9`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:bf9981a6de22ea755ad1653faf9779d2d87c6ff5cd31b4fca1011b7060dbc2d2
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269429256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244f39eb3795e7083f7efbcb9d9bbe5dc722ba48026bb627ff4d5d2c4022ca47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:08:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 21 Mar 2017 22:09:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 21 Mar 2017 22:09:14 GMT
ENV ODOO_VERSION=10.0
# Tue, 21 Mar 2017 22:09:15 GMT
ENV ODOO_RELEASE=20170207
# Tue, 21 Mar 2017 22:10:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 21 Mar 2017 22:10:22 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 21 Mar 2017 22:10:24 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:25 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 21 Mar 2017 22:10:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 21 Mar 2017 22:10:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 21 Mar 2017 22:10:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 21 Mar 2017 22:10:26 GMT
USER [odoo]
# Tue, 21 Mar 2017 22:10:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 22:10:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dcf899a6ab68c9c128b1fd596a90de99976189919ae48d9eabc6df3592a67c`  
		Last Modified: Thu, 23 Mar 2017 23:25:24 GMT  
		Size: 86.7 MB (86741158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2365ffa2b21e3aaec9ebde36b1adf32d5078350743f497e08f4ffca53a2a7984`  
		Last Modified: Thu, 23 Mar 2017 23:25:49 GMT  
		Size: 131.2 MB (131247761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff1e2b7e0967db93233c5182001b91d52941a5d3760e720710501cabd9d00f`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5976fb119fe13e69a5ad546677e3636d23cf49665aa982f8575502fb862a7814`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47599552ee24c8833f37e7b7ccc652704a257e49a59c5d526a4a77d03cba0b1`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93220fff58a3162d0ae2063b578ab9eaa28963541a17633d2ea0bc8cd8b35e9`  
		Last Modified: Thu, 23 Mar 2017 23:24:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
