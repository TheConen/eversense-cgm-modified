.class final Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;
.super Ljava/lang/Object;
.source "MockWebServer.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TruncatingBuffer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0003H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;",
        "Lokio/Sink;",
        "remainingByteCount",
        "",
        "(J)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer$mockwebserver",
        "()Lokio/Buffer;",
        "receivedByteCount",
        "getReceivedByteCount$mockwebserver",
        "()J",
        "setReceivedByteCount$mockwebserver",
        "close",
        "",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "write",
        "source",
        "byteCount",
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
.field private final buffer:Lokio/Buffer;

.field private receivedByteCount:J

.field private remainingByteCount:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    .line 916
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final getBuffer$mockwebserver()Lokio/Buffer;
    .locals 1

    .line 916
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getReceivedByteCount$mockwebserver()J
    .locals 2

    .line 917
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    return-wide v0
.end method

.method public final setReceivedByteCount$mockwebserver(J)V
    .locals 0

    .line 917
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 937
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 923
    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v4, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    :cond_0
    sub-long v4, p2, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 927
    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 929
    :cond_1
    iget-wide v2, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    .line 930
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    return-void
.end method
