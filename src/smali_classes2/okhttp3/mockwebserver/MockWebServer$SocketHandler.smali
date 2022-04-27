.class public final Lokhttp3/mockwebserver/MockWebServer$SocketHandler;
.super Ljava/lang/Object;
.source "MockWebServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMockWebServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MockWebServer.kt\nokhttp3/mockwebserver/MockWebServer$SocketHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n1#2:1152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\u0008J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/mockwebserver/MockWebServer$SocketHandler;",
        "",
        "raw",
        "Ljava/net/Socket;",
        "(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V",
        "sequenceNumber",
        "",
        "createTunnel",
        "",
        "handle",
        "processOneRequest",
        "",
        "socket",
        "source",
        "Lokio/BufferedSource;",
        "sink",
        "Lokio/BufferedSink;",
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
.field private final raw:Ljava/net/Socket;

.field private sequenceNumber:I

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method public constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    const-string v0, "raw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    return-void
.end method

.method private final createTunnel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 572
    :cond_0
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    .line 573
    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-direct {p0, v3, v0, v1}, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_0

    return-void

    .line 573
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tunnel without any CONNECT!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 588
    invoke-interface {p2}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 592
    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    invoke-static {v0, p1, p2, p3, v2}, Lokhttp3/mockwebserver/MockWebServer;->access$readRequest(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object v0

    .line 593
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$getAtomicRequestCount$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 594
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$getRequestQueue$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {v0}, Lokhttp3/mockwebserver/RecordedRequest;->getFailure()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 600
    :cond_1
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v3

    sget-object v4, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v3, v4, :cond_2

    .line 602
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return v1

    .line 605
    :cond_2
    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v3

    sget-object v4, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v3, v4, :cond_4

    .line 607
    invoke-interface {p2}, Lokio/BufferedSource;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 608
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected data"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    const-string v3, "Connection"

    .line 612
    invoke-virtual {v0, v3}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Upgrade"

    const/4 v9, 0x1

    invoke-static {v4, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 613
    invoke-virtual {v0, v4}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "websocket"

    invoke-static {v4, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_0

    :cond_5
    move v3, v1

    .line 615
    :goto_0
    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v4

    if-eqz v4, :cond_6

    move v4, v9

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 617
    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/mockwebserver/MockWebServer;->access$handleWebSocketUpgrade(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    move p2, v1

    goto :goto_2

    .line 620
    :cond_7
    iget-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {p2, p1, p3, v2}, Lokhttp3/mockwebserver/MockWebServer;->access$writeHttpResponse(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    move p2, v9

    .line 623
    :goto_2
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 624
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object p3

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and responded: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 629
    :cond_8
    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object p3

    sget-object v0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lokhttp3/mockwebserver/SocketPolicy;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v9, :cond_c

    const/4 v0, 0x2

    if-eq p3, v0, :cond_b

    const/4 v0, 0x3

    if-eq p3, v0, :cond_a

    const/4 p1, 0x4

    if-eq p3, p1, :cond_9

    goto :goto_3

    .line 636
    :cond_9
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {p1}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V

    goto :goto_3

    .line 635
    :cond_a
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    goto :goto_3

    .line 634
    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V

    .line 640
    :goto_3
    iget p1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    add-int/2addr p1, v9

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    return p2

    .line 631
    :cond_c
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return v1
.end method


# virtual methods
.method public final handle()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    .line 485
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 488
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$getSslSocketFactory$p(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    .line 489
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$getTunnelProxy$p(Lokhttp3/mockwebserver/MockWebServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-direct {p0}, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->createTunnel()V

    .line 492
    :cond_0
    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v2, :cond_1

    .line 493
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-static {v0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->access$dispatchBookkeepingRequest(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    .line 494
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-static {v0, v1}, Lokhttp3/mockwebserver/MockWebServer;->access$processHandshakeFailure(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V

    return-void

    .line 497
    :cond_1
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$getSslSocketFactory$p(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    const-string v8, "raw.inetAddress"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 498
    iget-object v8, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getPort()I

    move-result v8

    .line 497
    invoke-virtual {v2, v6, v7, v8, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    const-string v6, "sslSocketFactory!!.creat\u2026          raw.port, true)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    .line 499
    move-object v6, v2

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 500
    invoke-virtual {v6, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 501
    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v7}, Lokhttp3/mockwebserver/MockWebServer;->access$getClientAuth$p(Lokhttp3/mockwebserver/MockWebServer;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 502
    invoke-virtual {v6, v5}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v7}, Lokhttp3/mockwebserver/MockWebServer;->access$getClientAuth$p(Lokhttp3/mockwebserver/MockWebServer;)I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 504
    invoke-virtual {v6, v5}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 506
    :cond_3
    :goto_0
    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v7}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v7}, Lokhttp3/mockwebserver/MockWebServer;->getProtocolNegotiationEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 509
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockWebServer;->protocols()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v6, v3, v8}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 512
    :cond_4
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 514
    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v7}, Lokhttp3/mockwebserver/MockWebServer;->getProtocolNegotiationEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 515
    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v6}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 517
    sget-object v7, Lokhttp3/Protocol;->Companion:Lokhttp3/Protocol$Companion;

    invoke-virtual {v7, v1}, Lokhttp3/Protocol$Companion;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 518
    :goto_1
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 520
    :cond_6
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 499
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_8
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockWebServer;->protocols()Ljava/util/List;

    move-result-object v2

    sget-object v6, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 523
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    .line 524
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    goto :goto_2

    .line 526
    :cond_9
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    .line 529
    :goto_2
    sget-object v6, Lokhttp3/mockwebserver/SocketPolicy;->STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v6, :cond_a

    .line 530
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    invoke-static {v0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->access$dispatchBookkeepingRequest(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    return-void

    .line 534
    :cond_a
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v1, v0, :cond_f

    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    if-ne v1, v0, :cond_b

    goto :goto_4

    .line 544
    :cond_b
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne v1, v0, :cond_e

    .line 548
    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 549
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 551
    :goto_3
    invoke-direct {p0, v2, v0, v1}, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    .line 554
    :cond_c
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->sequenceNumber:I

    if-nez v0, :cond_d

    .line 555
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " connection from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->raw:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t make a request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 559
    :cond_d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 560
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 545
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 535
    :cond_f
    :goto_4
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;

    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-direct {v0, v6, v2, v1}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;)V

    .line 536
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$Builder;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$getTaskRunner$p(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v1

    invoke-direct {v6, v4, v1}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(ZLokhttp3/internal/concurrent/TaskRunner;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    move-object v7, v2

    .line 537
    invoke-static/range {v6 .. v12}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket$default(Lokhttp3/internal/http2/Http2Connection$Builder;Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;ILjava/lang/Object;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v1

    .line 538
    check-cast v0, Lokhttp3/internal/http2/Http2Connection$Listener;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$getTaskRunner$p(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v1

    invoke-static {v0, v4, v1, v5, v3}, Lokhttp3/internal/http2/Http2Connection;->start$default(Lokhttp3/internal/http2/Http2Connection;ZLokhttp3/internal/concurrent/TaskRunner;ILjava/lang/Object;)V

    .line 541
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenConnections$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
