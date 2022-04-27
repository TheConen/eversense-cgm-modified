.class public abstract Lokhttp3/internal/duplex/MwsDuplexAccess;
.super Ljava/lang/Object;
.source "MwsDuplexAccess.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/duplex/MwsDuplexAccess$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lokhttp3/internal/duplex/MwsDuplexAccess;",
        "",
        "()V",
        "setBody",
        "",
        "mockResponse",
        "Lokhttp3/mockwebserver/MockResponse;",
        "duplexResponseBody",
        "Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;",
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
.field public static final Companion:Lokhttp3/internal/duplex/MwsDuplexAccess$Companion;

.field public static instance:Lokhttp3/internal/duplex/MwsDuplexAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/duplex/MwsDuplexAccess$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/duplex/MwsDuplexAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/duplex/MwsDuplexAccess;->Companion:Lokhttp3/internal/duplex/MwsDuplexAccess$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setBody(Lokhttp3/mockwebserver/MockResponse;Lokhttp3/mockwebserver/internal/duplex/DuplexResponseBody;)V
.end method
