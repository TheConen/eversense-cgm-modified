.class public final Lokhttp3/mockwebserver/RecordedRequest;
.super Ljava/lang/Object;
.source "RecordedRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001BQ\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u00105\u001a\u0004\u0018\u00010\u00032\u0006\u00106\u001a\u00020\u0003J\u0008\u00107\u001a\u00020\u0003H\u0007J\u0008\u00108\u001a\u00020\u0003H\u0016R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010!\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010#R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010#R\u0013\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0013\u0010-\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020\u00038GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00082\u00103\u001a\u0004\u00084\u0010#\u00a8\u00069"
    }
    d2 = {
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "",
        "requestLine",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "chunkSizes",
        "",
        "",
        "bodySize",
        "",
        "body",
        "Lokio/Buffer;",
        "sequenceNumber",
        "socket",
        "Ljava/net/Socket;",
        "failure",
        "Ljava/io/IOException;",
        "(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;)V",
        "getBody",
        "()Lokio/Buffer;",
        "getBodySize",
        "()J",
        "getChunkSizes",
        "()Ljava/util/List;",
        "getFailure",
        "()Ljava/io/IOException;",
        "handshake",
        "Lokhttp3/Handshake;",
        "getHandshake",
        "()Lokhttp3/Handshake;",
        "getHeaders",
        "()Lokhttp3/Headers;",
        "method",
        "getMethod",
        "()Ljava/lang/String;",
        "path",
        "getPath",
        "getRequestLine",
        "requestUrl",
        "Lokhttp3/HttpUrl;",
        "getRequestUrl",
        "()Lokhttp3/HttpUrl;",
        "getSequenceNumber",
        "()I",
        "tlsVersion",
        "Lokhttp3/TlsVersion;",
        "getTlsVersion",
        "()Lokhttp3/TlsVersion;",
        "utf8Body",
        "-deprecated_utf8Body$annotations",
        "()V",
        "-deprecated_utf8Body",
        "getHeader",
        "name",
        "getUtf8Body",
        "toString",
        "mockwebserver"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final body:Lokio/Buffer;

.field private final bodySize:J

.field private final chunkSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final failure:Ljava/io/IOException;

.field private final handshake:Lokhttp3/Handshake;

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final requestLine:Ljava/lang/String;

.field private final requestUrl:Lokhttp3/HttpUrl;

.field private final sequenceNumber:I


# direct methods
.method public static synthetic -deprecated_utf8Body$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use body.readUtf8()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "body.readUtf8()"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Lokio/Buffer;",
            "I",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Lokio/Buffer;",
            "I",
            "Ljava/net/Socket;",
            "Ljava/io/IOException;",
            ")V"
        }
    .end annotation

    const-string v0, "requestLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chunkSizes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    iput-wide p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    iput-object p6, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    iput p7, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    iput-object p9, p0, Lokhttp3/mockwebserver/RecordedRequest;->failure:Ljava/io/IOException;

    .line 86
    instance-of p1, p8, Ljavax/net/ssl/SSLSocket;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    sget-object p3, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    move-object p4, p8

    check-cast p4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    const-string p5, "socket.session"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lokhttp3/Handshake$Companion;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object p3

    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/IllegalArgumentException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 93
    :cond_0
    move-object p3, p2

    check-cast p3, Lokhttp3/Handshake;

    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    .line 96
    :goto_0
    iget-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x0

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-eqz p3, :cond_7

    .line 97
    iget-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p3

    .line 98
    iget-object p5, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    move-object v0, p5

    check-cast v0, Ljava/lang/CharSequence;

    add-int/lit8 p5, p3, 0x1

    const/4 v4, 0x4

    move v2, p5

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p6

    .line 99
    iget-object p7, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    const-string p9, "null cannot be cast to non-null type java.lang.String"

    if-eqz p7, :cond_6

    invoke-virtual {p7, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string p7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 100
    iget-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x2

    const-string p6, "/"

    .line 101
    invoke-static {p3, p6, p4, p5, p2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_2

    move-object p3, p6

    .line 104
    :cond_2
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "https"

    goto :goto_2

    :cond_3
    const-string p1, "http"

    .line 107
    :goto_2
    invoke-virtual {p8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p6

    const-string p7, "inetAddress"

    .line 109
    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p7

    .line 110
    instance-of p6, p6, Ljava/net/Inet6Address;

    const/16 p9, 0x3a

    if-eqz p6, :cond_4

    const-string p6, "hostname"

    invoke-static {p7, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p6, p7

    check-cast p6, Ljava/lang/CharSequence;

    invoke-static {p6, p9, p4, p5, p2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x5b

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x5d

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 118
    :cond_4
    invoke-virtual {p8}, Ljava/net/Socket;->getLocalPort()I

    move-result p2

    .line 120
    sget-object p4, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    goto :goto_3

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_7
    move-object p1, p2

    check-cast p1, Lokhttp3/HttpUrl;

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    .line 123
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    check-cast v0, Ljava/io/IOException;

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final -deprecated_utf8Body()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Lokio/Buffer;
    .locals 1

    .line 48
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    return-object v0
.end method

.method public final getBodySize()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    return-wide v0
.end method

.method public final getChunkSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    return-object v0
.end method

.method public final getFailure()Ljava/io/IOException;
    .locals 1

    .line 61
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->failure:Ljava/io/IOException;

    return-object v0
.end method

.method public final getHandshake()Lokhttp3/Handshake;
    .locals 1

    .line 70
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 36
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestLine()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 71
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public final getSequenceNumber()I
    .locals 1

    .line 54
    iget v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    return v0
.end method

.method public final getTlsVersion()Lokhttp3/TlsVersion;
    .locals 1

    .line 83
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getUtf8Body()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use body.readUtf8()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "body.readUtf8()"
            imports = {}
        .end subannotation
    .end annotation

    .line 132
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method
