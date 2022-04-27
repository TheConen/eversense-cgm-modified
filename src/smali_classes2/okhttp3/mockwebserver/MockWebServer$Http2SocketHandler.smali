.class final Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "MockWebServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Http2SocketHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J&\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J \u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;",
        "Lokhttp3/internal/http2/Http2Connection$Listener;",
        "socket",
        "Ljava/net/Socket;",
        "protocol",
        "Lokhttp3/Protocol;",
        "(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;)V",
        "sequenceNumber",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "onStream",
        "",
        "stream",
        "Lokhttp3/internal/http2/Http2Stream;",
        "pushPromises",
        "request",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "promises",
        "",
        "Lokhttp3/mockwebserver/PushPromise;",
        "readRequest",
        "writeResponse",
        "response",
        "Lokhttp3/mockwebserver/MockResponse;",
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
.field private final protocol:Lokhttp3/Protocol;

.field private final sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method public constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Lokhttp3/Protocol;",
            ")V"
        }
    .end annotation

    const-string v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    .line 948
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    iput-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    .line 949
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private final pushPromises(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Stream;",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1097
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/mockwebserver/PushPromise;

    .line 1098
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 1099
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    iget-object v6, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/mockwebserver/MockWebServer;->url(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->method()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->headers()Lokhttp3/Headers;

    move-result-object v4

    .line 1103
    invoke-virtual {v4}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1104
    new-instance v7, Lokhttp3/internal/http2/Header;

    invoke-direct {v7, v6, v5}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 1108
    iget-object v4, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v4}, Lokhttp3/mockwebserver/MockWebServer;->access$getRequestQueue$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    new-instance v5, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->headers()Lokhttp3/Headers;

    move-result-object v8

    const-wide/16 v10, 0x0

    .line 1109
    new-instance v12, Lokio/Buffer;

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    iget-object v6, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v13

    iget-object v14, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    const/4 v15, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    move-object v6, v5

    .line 1108
    invoke-direct/range {v6 .. v17}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->response()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1111
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v3

    .line 1112
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->response()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-direct {v0, v3, v4, v2}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private final readRequest(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 988
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->takeHeaders()Lokhttp3/Headers;

    move-result-object v0

    .line 989
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 993
    invoke-virtual {v0}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "<:method omitted>"

    const-string v5, "<:path omitted>"

    move v6, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, ":method"

    .line 994
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v4, v7

    goto :goto_2

    :cond_1
    const-string v10, ":path"

    .line 996
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v5, v7

    goto :goto_2

    .line 998
    :cond_2
    iget-object v10, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    sget-object v11, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v10, v11, :cond_4

    iget-object v10, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    sget-object v11, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    if-ne v10, v11, :cond_3

    goto :goto_1

    .line 1001
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 999
    :cond_4
    :goto_1
    invoke-virtual {v2, v9, v7}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_2
    const-string v10, "expect"

    .line 1003
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "100-continue"

    invoke-static {v7, v9, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v8

    goto :goto_0

    .line 1008
    :cond_5
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v9

    .line 1010
    iget-object v0, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v11

    if-nez v6, :cond_6

    .line 1011
    invoke-virtual {v11}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v2, :cond_6

    .line 1013
    new-instance v0, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    sget-object v6, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v7, "100 Continue"

    invoke-virtual {v6, v7}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, p1

    .line 1014
    invoke-virtual {v2, v0, v8, v3}, Lokhttp3/internal/http2/Http2Stream;->writeHeaders(Ljava/util/List;ZZ)V

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_3

    :cond_6
    move-object/from16 v2, p1

    move v3, v6

    .line 1019
    :goto_3
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " HTTP/1.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    .line 1021
    check-cast v0, Ljava/io/IOException;

    if-eqz v3, :cond_8

    .line 1022
    invoke-virtual {v11}, Lokhttp3/mockwebserver/MockResponse;->isDuplex()Z

    move-result v3

    if-nez v3, :cond_8

    :try_start_0
    const-string v3, "content-length"

    .line 1024
    invoke-virtual {v9, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1025
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    :goto_4
    move-wide v15, v3

    .line 1026
    iget-object v10, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v12, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v13

    .line 1027
    move-object v14, v6

    check-cast v14, Lokio/BufferedSink;

    const/16 v17, 0x1

    .line 1026
    invoke-static/range {v10 .. v17}, Lokhttp3/mockwebserver/MockWebServer;->access$throttledTransfer(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :cond_8
    :goto_5
    move-object/from16 v16, v0

    .line 1033
    new-instance v0, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v11

    .line 1034
    iget-object v2, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v14

    iget-object v15, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    move-object v7, v0

    move-object v13, v6

    .line 1033
    invoke-direct/range {v7 .. v16}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;)V

    return-object v0
.end method

.method private final writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1043
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v4

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/internal/http2/Http2Connection;->setSettings(Lokhttp3/internal/http2/Settings;)V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v4

    sget-object v5, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v4, v5, :cond_0

    return-void

    .line 1049
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 1050
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    new-array v7, v5, [C

    const/16 v8, 0x20

    const/4 v12, 0x0

    aput-char v8, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1051
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7}, Lokhttp3/mockwebserver/MockResponse;->getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    .line 1052
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v9}, Lokhttp3/mockwebserver/MockResponse;->getBodyDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    .line 1054
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_c

    .line 1057
    new-instance v11, Lokhttp3/internal/http2/Header;

    sget-object v13, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v11, v13, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v6

    .line 1059
    invoke-virtual {v6}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1060
    new-instance v14, Lokhttp3/internal/http2/Header;

    invoke-direct {v14, v13, v11}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getTrailers()Lokhttp3/Headers;

    move-result-object v6

    .line 1064
    iget-object v11, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v11, v7, v8}, Lokhttp3/mockwebserver/MockWebServer;->access$sleepIfDelayed(Lokhttp3/mockwebserver/MockWebServer;J)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1067
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getPushPromises()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->isDuplex()Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v12

    :goto_1
    if-eqz v7, :cond_4

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    move v11, v12

    goto :goto_3

    :cond_4
    :goto_2
    move v11, v5

    :goto_3
    if-eqz v8, :cond_6

    .line 1070
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    move v5, v12

    :cond_6
    :goto_4
    if-eqz v5, :cond_b

    .line 1073
    invoke-virtual {v0, v4, v8, v11}, Lokhttp3/internal/http2/Http2Stream;->writeHeaders(Ljava/util/List;ZZ)V

    .line 1074
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1075
    invoke-virtual {v0, v6}, Lokhttp3/internal/http2/Http2Stream;->enqueueTrailers(Lokhttp3/Headers;)V

    .line 1077
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getPushPromises()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v2, v4}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->pushPromises(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;Ljava/util/List;)V

    const/4 v4, 0x0

    if-eqz v7, :cond_8

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;

    move-object v0, v4

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v11

    check-cast v6, Lokio/BufferedSink;

    .line 1080
    iget-object v2, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2, v9, v10}, Lokhttp3/mockwebserver/MockWebServer;->access$sleepIfDelayed(Lokhttp3/mockwebserver/MockWebServer;J)V

    .line 1081
    iget-object v2, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v4, v1, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    move-object v5, v7

    check-cast v5, Lokio/BufferedSource;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lokhttp3/mockwebserver/MockWebServer;->access$throttledTransfer(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 1082
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 1083
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->isDuplex()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1084
    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getDuplexResponseBody()Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1085
    invoke-interface {v3, v2, v0}, Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;->onRequest(Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/internal/http2/Http2Stream;)V

    goto :goto_5

    :cond_9
    if-nez v8, :cond_a

    .line 1087
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v2, v4}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :cond_a
    :goto_5
    return-void

    .line 1071
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported: no body and non-empty trailers "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1055
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v1

    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v1, v2, :cond_0

    .line 955
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-static {v1, v2, v3}, Lokhttp3/mockwebserver/MockWebServer;->access$dispatchBookkeepingRequest(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    .line 956
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getHttp2ErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/ErrorCode$Companion;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->readRequest(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$getAtomicRequestCount$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 962
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$getRequestQueue$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 963
    invoke-virtual {v0}, Lokhttp3/mockwebserver/RecordedRequest;->getFailure()Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 967
    :cond_1
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v1

    .line 969
    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_2

    .line 970
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void

    .line 973
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    .line 974
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 975
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v2

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "and responded: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " protocol is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 980
    :cond_3
    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v1, :cond_4

    .line 981
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object p1

    .line 982
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_4
    return-void
.end method
