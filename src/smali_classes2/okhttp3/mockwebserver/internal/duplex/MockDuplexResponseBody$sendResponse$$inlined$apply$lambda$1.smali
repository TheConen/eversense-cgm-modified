.class final Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MockDuplexResponseBody.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->sendResponse(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "Lokhttp3/internal/http2/Http2Stream;",
        "Lkotlin/Unit;",
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "<anonymous parameter 1>",
        "Lokio/BufferedSource;",
        "responseBody",
        "Lokio/BufferedSink;",
        "<anonymous parameter 3>",
        "Lokhttp3/internal/http2/Http2Stream;",
        "invoke",
        "okhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $responseSent$inlined:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $s$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;->$s$inlined:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;->$responseSent$inlined:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lokhttp3/mockwebserver/RecordedRequest;

    check-cast p2, Lokio/BufferedSource;

    check-cast p3, Lokio/BufferedSink;

    check-cast p4, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;->invoke(Lokhttp3/mockwebserver/RecordedRequest;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/http2/Http2Stream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lokhttp3/mockwebserver/RecordedRequest;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseBody"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 3>"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;->$s$inlined:Ljava/lang/String;

    invoke-interface {p3, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 74
    invoke-interface {p3}, Lokio/BufferedSink;->flush()V

    .line 75
    iget-object p1, p0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$sendResponse$$inlined$apply$lambda$1;->$responseSent$inlined:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
