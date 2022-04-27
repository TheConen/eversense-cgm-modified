.class public final Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
.super Ljava/lang/Object;
.source "MockDuplexResponseBody.kt"

# interfaces
.implements Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0000J\u0006\u0010\u0014\u001a\u00020\u0000J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\tH\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0000J\u001a\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fH\u0007J\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\tH\u0002J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%R6\u0010\u0003\u001a*\u0012&\u0012$\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u000b0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;",
        "Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;",
        "()V",
        "actions",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lkotlin/Function4;",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "Lokhttp3/internal/http2/Http2Stream;",
        "",
        "Lokhttp3/mockwebserver/internal/duplex/Action;",
        "results",
        "Ljava/util/concurrent/FutureTask;",
        "Ljava/lang/Void;",
        "awaitSuccess",
        "cancelStream",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "exhaustRequest",
        "exhaustResponse",
        "onRequest",
        "request",
        "http2Stream",
        "receiveRequest",
        "expected",
        "",
        "requestIOException",
        "sendResponse",
        "s",
        "responseSent",
        "Ljava/util/concurrent/CountDownLatch;",
        "serviceStreamTask",
        "sleep",
        "duration",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
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
.field private final actions:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lkotlin/jvm/functions/Function4<",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            "Lokio/BufferedSource;",
            "Lokio/BufferedSink;",
            "Lokhttp3/internal/http2/Http2Stream;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final results:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->results:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static final synthetic access$getActions$p(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 40
    iget-object p0, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic sendResponse$default(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;ILjava/lang/Object;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 70
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->sendResponse(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    move-result-object p0

    return-object p0
.end method

.method private final serviceStreamTask(Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/internal/http2/Http2Stream;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;

    invoke-direct {v1, p0, p2, p1}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$serviceStreamTask$1;-><init>(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/RecordedRequest;)V

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final awaitSuccess()V
    .locals 4

    .line 113
    iget-object v0, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->results:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no onRequest call received"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final cancelStream(Lokhttp3/internal/http2/ErrorCode;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 55
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$cancelStream$$inlined$apply$lambda$1;

    invoke-direct {v2, p1}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$cancelStream$$inlined$apply$lambda$1;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final exhaustRequest()Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    .line 50
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 51
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;->INSTANCE:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final exhaustResponse()Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    .line 79
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 80
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustResponse$1$1;->INSTANCE:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustResponse$1$1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onRequest(Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->serviceStreamTask(Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/internal/http2/Http2Stream;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->results:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method public final receiveRequest(Ljava/lang/String;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 45
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$receiveRequest$$inlined$apply$lambda$1;

    invoke-direct {v2, p1}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$receiveRequest$$inlined$apply$lambda$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final requestIOException()Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    .line 58
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 59
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$requestIOException$1$1;->INSTANCE:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$requestIOException$1$1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final sendResponse(Ljava/lang/String;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->sendResponse$default(Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;ILjava/lang/Object;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final sendResponse(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseSent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 72
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;

    invoke-direct {v2, p1, p2}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final sleep(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
    .locals 3

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;

    .line 84
    iget-object v1, v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->actions:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sleep$$inlined$apply$lambda$1;

    invoke-direct {v2, p3, p1, p2}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sleep$$inlined$apply$lambda$1;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
