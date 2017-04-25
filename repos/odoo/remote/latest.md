## `odoo:latest`

```console
$ docker pull odoo@sha256:ee6e6d15b39f8bf5a83664cfefa95d4d27d20c40deabaff0c81929fc396d715b
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273118759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f200cfffa8402c5e1b3b5bb783b3fd4470093162ca156d472fe9e6000974d13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:37:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 25 Apr 2017 02:37:43 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:39:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:39:11 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 25 Apr 2017 02:39:12 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:39:15 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:39:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:39:19 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:39:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:20 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:39:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:39:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5802f724b90e24eb49c737d30493c2f02298dcf38e2e671bf64a8cd2a9f7ff52`  
		Last Modified: Tue, 25 Apr 2017 20:14:06 GMT  
		Size: 131.8 MB (131825180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9e7a704125b876cc4db4992548c267e7d5aa4df97d38180af5625208c3717e`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3f3e40ee4761df4c7feab5bd271fbee6128e2d760ec2c3a610788f87cdd1ac`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ed0f2d93390580b6a016bd258feda3c756a2cf754729536ace22deb66902b6`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf51298934800bbe910798c7528640e49c5535c7164b0766c071529bbfdabff`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
