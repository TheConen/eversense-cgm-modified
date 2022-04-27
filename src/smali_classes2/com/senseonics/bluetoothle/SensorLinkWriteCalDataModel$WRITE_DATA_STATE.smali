.class final enum Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
.super Ljava/lang/Enum;
.source "SensorLinkWriteCalDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WRITE_DATA_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 38
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v2, 0x1

    const-string v3, "STEP_1"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 39
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v3, 0x2

    const-string v4, "STEP_2"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 40
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v4, 0x3

    const-string v5, "STEP_3"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 41
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v5, 0x4

    const-string v6, "SUCCESS"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 42
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v6, 0x5

    const-string v7, "FAIL"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 36
    sget-object v8, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
    .locals 1

    .line 36
    const-class v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
    .locals 1

    .line 36
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-object v0
.end method
