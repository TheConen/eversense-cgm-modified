.class public final enum Lokhttp3/mockwebserver/SocketPolicy;
.super Ljava/lang/Enum;
.source "SocketPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/mockwebserver/SocketPolicy;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokhttp3/mockwebserver/SocketPolicy;",
        "",
        "(Ljava/lang/String;I)V",
        "SHUTDOWN_SERVER_AFTER_RESPONSE",
        "KEEP_OPEN",
        "DISCONNECT_AT_END",
        "UPGRADE_TO_SSL_AT_END",
        "DISCONNECT_AT_START",
        "DISCONNECT_AFTER_REQUEST",
        "DISCONNECT_DURING_REQUEST_BODY",
        "DISCONNECT_DURING_RESPONSE_BODY",
        "FAIL_HANDSHAKE",
        "SHUTDOWN_INPUT_AT_END",
        "SHUTDOWN_OUTPUT_AT_END",
        "STALL_SOCKET_AT_START",
        "NO_RESPONSE",
        "RESET_STREAM_AT_START",
        "EXPECT_CONTINUE",
        "CONTINUE_ALWAYS",
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
.field private static final synthetic $VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_SERVER_AFTER_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lokhttp3/mockwebserver/SocketPolicy;

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x0

    const-string v3, "SHUTDOWN_SERVER_AFTER_RESPONSE"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_SERVER_AFTER_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x1

    const-string v3, "KEEP_OPEN"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x2

    const-string v3, "DISCONNECT_AT_END"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x3

    const-string v3, "UPGRADE_TO_SSL_AT_END"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x4

    const-string v3, "DISCONNECT_AT_START"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x5

    const-string v3, "DISCONNECT_AFTER_REQUEST"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x6

    const-string v3, "DISCONNECT_DURING_REQUEST_BODY"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v2, 0x7

    const-string v3, "DISCONNECT_DURING_RESPONSE_BODY"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0x8

    const-string v3, "FAIL_HANDSHAKE"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0x9

    const-string v3, "SHUTDOWN_INPUT_AT_END"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xa

    const-string v3, "SHUTDOWN_OUTPUT_AT_END"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xb

    const-string v3, "STALL_SOCKET_AT_START"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xc

    const-string v3, "NO_RESPONSE"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xd

    const-string v3, "RESET_STREAM_AT_START"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xe

    const-string v3, "EXPECT_CONTINUE"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xf

    const-string v3, "CONTINUE_ALWAYS"

    invoke-direct {v1, v3, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    const-class v0, Lokhttp3/mockwebserver/SocketPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/mockwebserver/SocketPolicy;

    return-object p0
.end method

.method public static values()[Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v0}, [Lokhttp3/mockwebserver/SocketPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method
