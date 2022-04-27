.class final Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;
.super Ljava/lang/Object;
.source "MockDuplexResponseBody.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->serviceStreamTask(Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/internal/http2/Http2Stream;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Void;",
        "kotlin.jvm.PlatformType",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $http2Stream:Lokhttp3/internal/http2/Http2Stream;

.field final synthetic $request:Lokhttp3/mockwebserver/RecordedRequest;

.field final synthetic this$0:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->this$0:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    iput-object p2, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$http2Stream:Lokhttp3/internal/http2/Http2Stream;

    iput-object p3, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$request:Lokhttp3/mockwebserver/RecordedRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 10

    .line 99
    iget-object v0, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$http2Stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v0

    check-cast v3, Lokio/BufferedSource;

    .line 100
    iget-object v4, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$http2Stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v4

    check-cast v6, Lokio/BufferedSink;

    .line 102
    :goto_0
    iget-object v7, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->this$0:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    invoke-static {v7}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->access$getActions$p(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function4;

    if-eqz v7, :cond_0

    .line 103
    iget-object v8, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$request:Lokhttp3/mockwebserver/RecordedRequest;

    iget-object v9, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;->$http2Stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v7, v8, v3, v6, v9}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 106
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 100
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 99
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
