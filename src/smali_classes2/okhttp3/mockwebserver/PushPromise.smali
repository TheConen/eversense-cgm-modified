.class public final Lokhttp3/mockwebserver/PushPromise;
.super Ljava/lang/Object;
.source "PushPromise.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\r\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\rJ\r\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008\u000eJ\r\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008\u000fJ\r\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0008\u0010R\u0013\u0010\u0005\u001a\u00020\u00068\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\nR\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000bR\u0013\u0010\u0004\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000bR\u0013\u0010\u0007\u001a\u00020\u00088\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/mockwebserver/PushPromise;",
        "",
        "method",
        "",
        "path",
        "headers",
        "Lokhttp3/Headers;",
        "response",
        "Lokhttp3/mockwebserver/MockResponse;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/mockwebserver/MockResponse;)V",
        "()Lokhttp3/Headers;",
        "()Ljava/lang/String;",
        "()Lokhttp3/mockwebserver/MockResponse;",
        "-deprecated_headers",
        "-deprecated_method",
        "-deprecated_path",
        "-deprecated_response",
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
.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final response:Lokhttp3/mockwebserver/MockResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/mockwebserver/PushPromise;->method:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/mockwebserver/PushPromise;->path:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/mockwebserver/PushPromise;->headers:Lokhttp3/Headers;

    iput-object p4, p0, Lokhttp3/mockwebserver/PushPromise;->response:Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public final -deprecated_headers()Lokhttp3/Headers;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headers"
            imports = {}
        .end subannotation
    .end annotation

    .line 47
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final -deprecated_method()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "method"
            imports = {}
        .end subannotation
    .end annotation

    .line 33
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_path()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "path"
            imports = {}
        .end subannotation
    .end annotation

    .line 40
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_response()Lokhttp3/mockwebserver/MockResponse;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "response"
            imports = {}
        .end subannotation
    .end annotation

    .line 54
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->response:Lokhttp3/mockwebserver/MockResponse;

    return-object v0
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    .line 24
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final path()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final response()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 25
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->response:Lokhttp3/mockwebserver/MockResponse;

    return-object v0
.end method
