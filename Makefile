# $FreeBSD$

PORTNAME=	icecream
PORTVERSION=	1.2
CATEGORIES=	devel
MASTER_SITES=	https://github.com/icecc/icecream/releases/download/${PORTVERSION}/

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Distributed compiler with a central scheduler to share build load

LICENSE=	GPLv2

BUILD_DEPENDS=	docbook2man:textproc/docbook2X
LIB_DEPENDS=	liblzo2.so:archivers/lzo2

USES=	autoreconf gmake libtool shebangfix

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GNU_CONFIGURE=	yes

SHEBANG_FILES=	client/icecc-test-env.in

.include <bsd.port.mk>
