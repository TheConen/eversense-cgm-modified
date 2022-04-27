.class final Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MockDuplexResponseBody.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;->exhaustRequest()Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody;
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "requestBody",
        "Lokio/BufferedSource;",
        "<anonymous parameter 2>",
        "Lokio/BufferedSink;",
        "<anonymous parameter 3>",
        "Lokhttp3/internal/http2/Http2Stream;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;

    invoke-direct {v0}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;-><init>()V

    sput-object v0, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;->INSTANCE:Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/mockwebserver/internal/duplex/MockDuplexResponseBody$exhaustRequest$1$1;->invoke(Lokhttp3/mockwebserver/RecordedRequest;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/http2/Http2Stream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lokhttp3/mockwebserver/RecordedRequest;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestBody"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 3>"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lokio/BufferedSource;->exhausted()Z

    move-result p1

    invoke-static {p1}, Lorg/junit/Assert;->assertTrue(Z)V

    return-void
.end method
