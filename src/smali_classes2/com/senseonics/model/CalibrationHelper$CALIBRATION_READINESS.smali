.class public final enum Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
.super Ljava/lang/Enum;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/CalibrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALIBRATION_READINESS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum TRANSMITTER_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 423
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1, v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 424
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v2, 0x1

    const-string v3, "NOT_ENOUGH_DATA"

    invoke-direct {v0, v3, v2, v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 425
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v3, 0x2

    const-string v4, "GLUCOSE_RATE_TOO_HIGH"

    invoke-direct {v0, v4, v3, v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 426
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v4, 0x3

    const-string v5, "TOO_SOON"

    invoke-direct {v0, v5, v4, v4}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 427
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v5, 0x4

    const-string v6, "DROPOUT_PHASE"

    invoke-direct {v0, v6, v5, v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 428
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v6, 0x5

    const-string v7, "SENSOR_EOL"

    invoke-direct {v0, v7, v6, v6}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 429
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v7, 0x6

    const-string v8, "NO_SENSOR_LINKED"

    invoke-direct {v0, v8, v7, v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 430
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/4 v8, 0x7

    const-string v9, "UNSUPPORTED_MODE"

    invoke-direct {v0, v9, v8, v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 431
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v9, 0x8

    const-string v10, "WAITING_POST_CALIBRATION"

    invoke-direct {v0, v10, v9, v9}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 432
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v10, 0x9

    const-string v11, "LED_DISCONNECT_DETECTED"

    invoke-direct {v0, v11, v10, v10}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 433
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v11, 0xa

    const-string v12, "TRANSMITTER_EOL"

    invoke-direct {v0, v12, v11, v11}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TRANSMITTER_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 434
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v12, 0xb

    const-string v13, "REASON_UNKNOWN"

    const/16 v14, 0xff

    invoke-direct {v0, v13, v12, v14}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 422
    sget-object v14, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v14, v13, v1

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v3

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v4

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v5

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v6

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v7

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v8

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v9

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v10

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TRANSMITTER_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 439
    iput p3, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 5

    .line 447
    invoke-static {}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 448
    invoke-virtual {v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_1
    sget-object p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 422
    const-class v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 422
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v0}, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->id:I

    return v0
.end method
