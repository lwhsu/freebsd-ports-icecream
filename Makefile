# $FreeBSD$

PORTNAME=	icecream
PORTVERSION=	1.2
CATEGORIES=	devel

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Distributed compiler with a central scheduler to share build load

LICENSE=	GPLv2

BUILD_DEPENDS=	docbook2man:textproc/docbook2X
LIB_DEPENDS=	liblzo2.so:archivers/lzo2

USES=	autoreconf gmake libtool shebangfix

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GNU_CONFIGURE=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	icecc
GH_TAGNAME=	${PORTVERSION}

SHEBANG_FILES=	client/icecc-test-env.in

.include <bsd.port.mk>
