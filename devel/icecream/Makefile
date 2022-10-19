PORTNAME=	icecream
DISTVERSION=	1.4.0
CATEGORIES=	devel
MASTER_SITES=	https://github.com/icecc/icecream/releases/download/${DISTVERSION:R}/
DISTNAME=	icecc-${DISTVERSION}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Distributed compiler with a central scheduler to share build load
WWW=		https://github.com/icecc/icecream

LICENSE=	GPLv2

LIB_DEPENDS=	liblzo2.so:archivers/lzo2 \
		libzstd.so:archivers/zstd

USES=		autoreconf gmake libarchive libtool localbase pkgconfig shebangfix tar:xz

SHEBANG_FILES=	client/icecc-test-env client/icecc-create-env

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
