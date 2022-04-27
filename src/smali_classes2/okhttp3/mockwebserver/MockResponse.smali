.class public final Lokhttp3/mockwebserver/MockResponse;
.super Ljava/lang/Object;
.source "MockResponse.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/mockwebserver/MockResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMockResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MockResponse.kt\nokhttp3/mockwebserver/MockResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,353:1\n1#2:354\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\'\u0018\u0000 j2\u00020\u0001:\u0001jB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u000200J\u0016\u0010A\u001a\u00020\u00002\u0006\u0010C\u001a\u0002002\u0006\u0010\u000e\u001a\u00020DJ\u0016\u0010E\u001a\u00020\u00002\u0006\u0010C\u001a\u0002002\u0006\u0010\u000e\u001a\u00020DJ\u0006\u0010F\u001a\u00020\u0000J\u0008\u0010G\u001a\u00020\u0000H\u0016J\u0008\u0010H\u001a\u0004\u0018\u00010\u0004J\u000e\u0010I\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\r\u0010\u0011\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008KJ\u000e\u0010L\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\r\u0010\u001a\u001a\u00020\u0018H\u0007\u00a2\u0006\u0002\u0008MJ\r\u0010-\u001a\u00020+H\u0007\u00a2\u0006\u0002\u0008NJ\r\u00102\u001a\u000200H\u0007\u00a2\u0006\u0002\u0008OJ\u000e\u0010P\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\r\u0010;\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008QJ\u000e\u0010R\u001a\u00020\u00002\u0006\u0010C\u001a\u000200J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u000200J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0016\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\u0016\u0010V\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u0002002\u0006\u0010W\u001a\u00020\u0018J\u0016\u0010V\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010W\u001a\u00020\u0018J\u0016\u0010X\u001a\u00020\u00002\u0006\u0010C\u001a\u0002002\u0006\u0010\u000e\u001a\u00020DJ\u000e\u0010Y\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010Z\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0018J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010,\u001a\u00020+J\u000e\u0010_\u001a\u00020\u00002\u0006\u00101\u001a\u000200J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u000fJ\u001e\u0010a\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u00062\u0006\u0010c\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0008J\u0008\u0010d\u001a\u000200H\u0016J\u000e\u0010e\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\"J\u000e\u0010g\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\'J\u000e\u0010h\u001a\u00020\u00002\u0006\u0010i\u001a\u00020=R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0010\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\u0018@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u0019\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001fR\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u001e\u0010(\u001a\u00020\'2\u0006\u0010\t\u001a\u00020\'@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R$\u0010,\u001a\u00020+2\u0006\u0010\t\u001a\u00020+@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008,\u0010/R$\u00101\u001a\u0002002\u0006\u0010\t\u001a\u000200@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00081\u00104R\u001e\u00105\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u000e\u00108\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010:\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010\u0012\"\u0004\u0008:\u0010\u0013R\u000e\u0010<\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010>\u001a\u0004\u0018\u00010=2\u0008\u0010\t\u001a\u0004\u0018\u00010=@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@\u00a8\u0006k"
    }
    d2 = {
        "Lokhttp3/mockwebserver/MockResponse;",
        "",
        "()V",
        "body",
        "Lokio/Buffer;",
        "bodyDelayAmount",
        "",
        "bodyDelayUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "<set-?>",
        "Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;",
        "duplexResponseBody",
        "getDuplexResponseBody",
        "()Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;",
        "value",
        "Lokhttp3/Headers;",
        "headers",
        "getHeaders",
        "()Lokhttp3/Headers;",
        "(Lokhttp3/Headers;)V",
        "headersBuilder",
        "Lokhttp3/Headers$Builder;",
        "headersDelayAmount",
        "headersDelayUnit",
        "",
        "http2ErrorCode",
        "getHttp2ErrorCode",
        "()I",
        "(I)V",
        "isDuplex",
        "",
        "()Z",
        "promises",
        "",
        "Lokhttp3/mockwebserver/PushPromise;",
        "pushPromises",
        "",
        "getPushPromises",
        "()Ljava/util/List;",
        "Lokhttp3/internal/http2/Settings;",
        "settings",
        "getSettings",
        "()Lokhttp3/internal/http2/Settings;",
        "Lokhttp3/mockwebserver/SocketPolicy;",
        "socketPolicy",
        "getSocketPolicy",
        "()Lokhttp3/mockwebserver/SocketPolicy;",
        "(Lokhttp3/mockwebserver/SocketPolicy;)V",
        "",
        "status",
        "getStatus",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "throttleBytesPerPeriod",
        "getThrottleBytesPerPeriod",
        "()J",
        "throttlePeriodAmount",
        "throttlePeriodUnit",
        "trailers",
        "getTrailers",
        "trailersBuilder",
        "Lokhttp3/WebSocketListener;",
        "webSocketListener",
        "getWebSocketListener",
        "()Lokhttp3/WebSocketListener;",
        "addHeader",
        "header",
        "name",
        "",
        "addHeaderLenient",
        "clearHeaders",
        "clone",
        "getBody",
        "getBodyDelay",
        "unit",
        "-deprecated_getHeaders",
        "getHeadersDelay",
        "-deprecated_getHttp2ErrorCode",
        "-deprecated_getSocketPolicy",
        "-deprecated_getStatus",
        "getThrottlePeriod",
        "-deprecated_getTrailers",
        "removeHeader",
        "setBody",
        "setBodyDelay",
        "delay",
        "setChunkedBody",
        "maxChunkSize",
        "setHeader",
        "setHeaders",
        "setHeadersDelay",
        "setHttp2ErrorCode",
        "setResponseCode",
        "code",
        "setSocketPolicy",
        "setStatus",
        "setTrailers",
        "throttleBody",
        "bytesPerPeriod",
        "period",
        "toString",
        "withPush",
        "promise",
        "withSettings",
        "withWebSocketUpgrade",
        "listener",
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
.field private static final CHUNKED_BODY_HEADER:Ljava/lang/String; = "Transfer-encoding: chunked"

.field public static final Companion:Lokhttp3/mockwebserver/MockResponse$Companion;


# instance fields
.field private body:Lokio/Buffer;

.field private bodyDelayAmount:J

.field private bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

.field private duplexResponseBody:Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;

.field private headersBuilder:Lokhttp3/Headers$Builder;

.field private headersDelayAmount:J

.field private headersDelayUnit:Ljava/util/concurrent/TimeUnit;

.field private http2ErrorCode:I

.field private promises:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lokhttp3/internal/http2/Settings;

.field private socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

.field private status:Ljava/lang/String;

.field private throttleBytesPerPeriod:J

.field private throttlePeriodAmount:J

.field private throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

.field private trailersBuilder:Lokhttp3/Headers$Builder;

.field private webSocketListener:Lokhttp3/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/mockwebserver/MockResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/mockwebserver/MockResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/mockwebserver/MockResponse;->Companion:Lokhttp3/mockwebserver/MockResponse$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    .line 32
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    .line 33
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->trailersBuilder:Lokhttp3/Headers$Builder;

    const-wide v0, 0x7fffffffffffffffL

    .line 52
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    const-wide/16 v0, 0x1

    .line 54
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    .line 58
    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headersDelayUnit:Ljava/util/concurrent/TimeUnit;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    .line 75
    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->settings:Lokhttp3/internal/http2/Settings;

    const/16 v0, 0xc8

    .line 90
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    const-wide/16 v0, 0x0

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public final -deprecated_getHeaders()Lokhttp3/Headers;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headers"
            imports = {}
        .end subannotation
    .end annotation

    .line 223
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_getHttp2ErrorCode()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "http2ErrorCode"
            imports = {}
        .end subannotation
    .end annotation

    .line 273
    iget v0, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return v0
.end method

.method public final -deprecated_getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "socketPolicy"
            imports = {}
        .end subannotation
    .end annotation

    .line 255
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method

.method public final -deprecated_getStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "status"
            imports = {}
        .end subannotation
    .end annotation

    .line 106
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_getTrailers()Lokhttp3/Headers;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trailers"
            imports = {}
        .end subannotation
    .end annotation

    .line 239
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockResponse;->getTrailers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final addHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 144
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 152
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final addHeaderLenient(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 161
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lokhttp3/internal/Internal;->addHeaderLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final clearHeaders()Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 135
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 136
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 96
    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    .line 97
    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okhttp3.mockwebserver.MockResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBody()Lokio/Buffer;
    .locals 1

    .line 178
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getBodyDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayAmount:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuplexResponseBody()Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;
    .locals 1

    .line 79
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->duplexResponseBody:Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;

    return-object v0
.end method

.method public final getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 38
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->headersDelayAmount:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->headersDelayUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHttp2ErrorCode()I
    .locals 1

    .line 66
    iget v0, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return v0
.end method

.method public final getPushPromises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    return-object v0
.end method

.method public final getSettings()Lokhttp3/internal/http2/Settings;
    .locals 1

    .line 75
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->settings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 58
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getThrottleBytesPerPeriod()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    return-wide v0
.end method

.method public final getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrailers()Lokhttp3/Headers;
    .locals 1

    .line 45
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->trailersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final getWebSocketListener()Lokhttp3/WebSocketListener;
    .locals 1

    .line 77
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->webSocketListener:Lokhttp3/WebSocketListener;

    return-object v0
.end method

.method public final headers(Lokhttp3/Headers;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final http2ErrorCode(I)V
    .locals 0

    .line 66
    iput p1, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return-void
.end method

.method public final isDuplex()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->duplexResponseBody:Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 174
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final setBody(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "duplexResponseBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 189
    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->duplexResponseBody:Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;

    return-object v0
.end method

.method public final setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 181
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    .line 182
    invoke-virtual {p1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p1

    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    return-object v0
.end method

.method public final setBodyDelay(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 304
    iput-wide p1, v0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayAmount:J

    .line 305
    iput-object p3, v0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final setChunkedBody(Ljava/lang/String;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public final setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 6

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    const-string v1, "Content-Length"

    .line 196
    invoke-virtual {v0, v1}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 197
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headersBuilder:Lokhttp3/Headers$Builder;

    const-string v2, "Transfer-encoding: chunked"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 199
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 200
    :goto_0
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    int-to-long v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 202
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    const-string v4, "\r\n"

    .line 203
    invoke-virtual {v1, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 204
    invoke-virtual {v1, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 205
    invoke-virtual {v1, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_0

    :cond_0
    const-string p1, "0\r\n"

    .line 207
    invoke-virtual {v1, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 208
    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    return-object v0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 168
    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 169
    invoke-virtual {v0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    return-object v0
.end method

.method public final setHeaders(Lokhttp3/Headers;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/MockResponse;->headers(Lokhttp3/Headers;)V

    return-object v0
.end method

.method public final setHeadersDelay(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 312
    iput-wide p1, v0, Lokhttp3/mockwebserver/MockResponse;->headersDelayAmount:J

    .line 313
    iput-object p3, v0, Lokhttp3/mockwebserver/MockResponse;->headersDelayUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final setHttp2ErrorCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 282
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 283
    iput p1, v0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return-object v0
.end method

.method public final setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 4

    const/16 v0, 0x64

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc7

    if-lt v0, p1, :cond_1

    const-string v0, "Informational"

    goto :goto_5

    :cond_1
    :goto_0
    const/16 v0, 0x12b

    const/16 v1, 0xc8

    if-le v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    const-string v0, "OK"

    goto :goto_5

    :cond_3
    :goto_1
    const/16 v0, 0x18f

    const/16 v1, 0x12c

    if-le v1, p1, :cond_4

    goto :goto_2

    :cond_4
    if-lt v0, p1, :cond_5

    const-string v0, "Redirection"

    goto :goto_5

    :cond_5
    :goto_2
    const/16 v0, 0x1f3

    const/16 v1, 0x190

    if-le v1, p1, :cond_6

    goto :goto_3

    :cond_6
    if-lt v0, p1, :cond_7

    const-string v0, "Client Error"

    goto :goto_5

    :cond_7
    :goto_3
    const/16 v0, 0x257

    const/16 v1, 0x1f4

    if-le v1, p1, :cond_8

    goto :goto_4

    :cond_8
    if-lt v0, p1, :cond_9

    const-string v0, "Server Error"

    goto :goto_5

    :cond_9
    :goto_4
    const-string v0, "Mock Response"

    .line 128
    :goto_5
    move-object v1, p0

    check-cast v1, Lokhttp3/mockwebserver/MockResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v1
.end method

.method public final setSocketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "socketPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 265
    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method

.method public final setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 116
    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final setTrailers(Lokhttp3/Headers;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "trailers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/MockResponse;->trailers(Lokhttp3/Headers;)V

    return-object v0
.end method

.method public final socketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-void
.end method

.method public final status(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public final throttleBody(JJLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "unit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 291
    iput-wide p1, v0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    .line 292
    iput-wide p3, v0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    .line 293
    iput-object p5, v0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final trailers(Lokhttp3/Headers;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->trailersBuilder:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final withPush(Lokhttp3/mockwebserver/PushPromise;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 324
    iget-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final withSettings(Lokhttp3/internal/http2/Settings;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 332
    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->settings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final withWebSocketUpgrade(Lokhttp3/WebSocketListener;)Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    const-string v1, "HTTP/1.1 101 Switching Protocols"

    .line 340
    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    const-string v1, "Upgrade"

    const-string v2, "Connection"

    .line 341
    invoke-virtual {v0, v2, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const-string v2, "websocket"

    .line 342
    invoke-virtual {v0, v1, v2}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const/4 v1, 0x0

    .line 343
    check-cast v1, Lokio/Buffer;

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    .line 344
    iput-object p1, v0, Lokhttp3/mockwebserver/MockResponse;->webSocketListener:Lokhttp3/WebSocketListener;

    return-object v0
.end method
