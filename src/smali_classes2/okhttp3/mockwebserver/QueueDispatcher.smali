.class public Lokhttp3/mockwebserver/QueueDispatcher;
.super Lokhttp3/mockwebserver/Dispatcher;
.source "QueueDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/mockwebserver/QueueDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/mockwebserver/QueueDispatcher;",
        "Lokhttp3/mockwebserver/Dispatcher;",
        "()V",
        "failFastResponse",
        "Lokhttp3/mockwebserver/MockResponse;",
        "responseQueue",
        "Ljava/util/concurrent/BlockingQueue;",
        "getResponseQueue",
        "()Ljava/util/concurrent/BlockingQueue;",
        "dispatch",
        "request",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "enqueueResponse",
        "",
        "response",
        "peek",
        "setFailFast",
        "failFast",
        "",
        "shutdown",
        "Companion",
        "mockwebserver"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/mockwebserver/QueueDispatcher$Companion;

.field private static final DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private failFastResponse:Lokhttp3/mockwebserver/MockResponse;

.field private final responseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/MockResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/mockwebserver/QueueDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/mockwebserver/QueueDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->Companion:Lokhttp3/mockwebserver/QueueDispatcher$Companion;

    .line 84
    new-instance v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const-string v1, "HTTP/1.1 503 shutting down"

    .line 85
    invoke-virtual {v0, v1}, Lokhttp3/mockwebserver/MockResponse;->status(Ljava/lang/String;)V

    .line 84
    sput-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    .line 88
    const-class v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lokhttp3/mockwebserver/Dispatcher;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lokhttp3/mockwebserver/RecordedRequest;->getRequestLine()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET /favicon.ico HTTP/1.1"

    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "served "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 37
    new-instance p1, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {p1}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 42
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 45
    :cond_1
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/MockResponse;

    .line 49
    sget-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "result"

    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final getResponseQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/MockResponse;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public peek()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 55
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public setFailFast(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method

.method public setFailFast(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {p1}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->setFailFast(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 63
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
