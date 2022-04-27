.class public final Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 MockWebServer.kt\nokhttp3/mockwebserver/MockWebServer\n*L\n1#1,218:1\n394#2,23:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "okhttp3/internal/concurrent/TaskQueue$execute$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $cancelable:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/mockwebserver/MockWebServer;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->$name:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->$cancelable:Z

    iput-object p5, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    .line 96
    invoke-direct {p0, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 5

    .line 220
    :try_start_0
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " starting to accept connections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$acceptConnections(Lokhttp3/mockwebserver/MockWebServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 223
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$getServerSocket$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "openClientSocket.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$getOpenConnections$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "httpConnection.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 240
    :cond_2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockWebServer;->getDispatcher()Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->shutdown()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
