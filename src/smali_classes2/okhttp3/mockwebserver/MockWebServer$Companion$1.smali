.class public final Lokhttp3/mockwebserver/MockWebServer$Companion$1;
.super Lokhttp3/internal/duplex/MwsDuplexAccess;
.source "MockWebServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okhttp3/mockwebserver/MockWebServer$Companion$1",
        "Lokhttp3/internal/duplex/MwsDuplexAccess;",
        "setBody",
        "",
        "mockResponse",
        "Lokhttp3/mockwebserver/MockResponse;",
        "duplexResponseBody",
        "Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;",
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
.method constructor <init>()V
    .locals 0

    .line 1119
    invoke-direct {p0}, Lokhttp3/internal/duplex/MwsDuplexAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public setBody(Lokhttp3/mockwebserver/MockResponse;Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;)V
    .locals 1

    const-string v0, "mockResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duplexResponseBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p1, p2}, Lokhttp3/mockwebserver/MockResponse;->setBody(Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method
