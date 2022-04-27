.class public abstract Lokhttp3/mockwebserver/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/mockwebserver/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lokhttp3/mockwebserver/Dispatcher;",
        "",
        "()V",
        "dispatch",
        "Lokhttp3/mockwebserver/MockResponse;",
        "request",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "peek",
        "shutdown",
        "",
        "mockwebserver"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public peek()Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 34
    new-instance v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v0, v1}, Lokhttp3/mockwebserver/MockResponse;->socketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
