.class public final synthetic Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lokhttp3/mockwebserver/SocketPolicy;->values()[Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/SocketPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/SocketPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/SocketPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lokhttp3/mockwebserver/MockWebServer$SocketHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_SERVER_AFTER_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/SocketPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
