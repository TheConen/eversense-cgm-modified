.class public final enum Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
.super Ljava/lang/Enum;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/Transmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECTION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v1, 0x0

    const-string v2, "CONNECTED"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 8
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v2, 0x1

    const-string v3, "DISCONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 9
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v3, 0x2

    const-string v4, "CONNECTING"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 10
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v4, 0x3

    const-string v5, "NEGOTIATING"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 11
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v5, 0x4

    const-string v6, "SEARCHING"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 12
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v6, 0x5

    const-string v7, "TRANSPORT_CONNECTED"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 6
    sget-object v8, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 6
    const-class v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 6
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method
