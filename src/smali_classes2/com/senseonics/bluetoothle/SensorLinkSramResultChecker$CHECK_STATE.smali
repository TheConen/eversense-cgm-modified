.class final enum Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
.super Ljava/lang/Enum;
.source "SensorLinkSramResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CHECK_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 21
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v2, 0x1

    const-string v3, "IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 22
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v3, 0x2

    const-string v4, "SUCCESS"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 23
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v4, 0x3

    const-string v5, "FAIL"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 19
    sget-object v6, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    aput-object v6, v5, v1

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    aput-object v1, v5, v2

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
    .locals 1

    .line 19
    const-class v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
    .locals 1

    .line 19
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-object v0
.end method
