.class public final Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "MockWebServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "close",
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


# instance fields
.field final synthetic $connectionClose:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $sink:Lokio/BufferedSink;

.field final synthetic $source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lokio/BufferedSource;Lokio/BufferedSink;ZLokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;->$connectionClose:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;->$source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;->$sink:Lokio/BufferedSink;

    invoke-direct {p0, p4, p5, p6}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 783
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;->$connectionClose:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
