.class public final Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->serveConnection(Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 MockWebServer.kt\nokhttp3/mockwebserver/MockWebServer\n*L\n1#1,218:1\n469#2,8:219\n*E\n"
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

.field final synthetic $raw$inlined:Ljava/net/Socket;

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$name:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$cancelable:Z

    iput-object p5, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iput-object p6, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$raw$inlined:Ljava/net/Socket;

    .line 96
    invoke-direct {p0, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 6

    const-string v0, " connection from "

    .line 220
    :try_start_0
    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$raw$inlined:Ljava/net/Socket;

    invoke-direct {v1, v2, v3}, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V

    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockWebServer$SocketHandler;->handle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 224
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$raw$inlined:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " crashed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 222
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;->$raw$inlined:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
