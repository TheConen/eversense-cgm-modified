.class public final enum Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
.super Ljava/lang/Enum;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/CalibrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALIBRATION_USE_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;


# instance fields
.field private id:I

.field private isCalibration:Z

.field private message:I

.field private shortTitle:I

.field private title:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 247
    new-instance v8, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v1, "NOT_ENTERED_FOR_CALIBRATION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f110046

    const v5, 0x7f110045

    const v6, 0x7f110108

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v8, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 254
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "ACTUALLY_USED_FOR_CALIBRATION"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const v15, 0x7f110107

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 261
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "MARKED_SUSPICIOUS"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const v7, 0x7f110110

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 268
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "GLUCOSE_TOO_LOW_TO_READ"

    const/4 v11, 0x3

    const/4 v12, 0x3

    const v15, 0x7f110112

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 275
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "GLUCOSE_TOO_HIGH_TO_READ"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const v7, 0x7f110111

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 282
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "GLUCOSE_RAPID_CHANGE"

    const/4 v11, 0x5

    const/4 v12, 0x5

    const v15, 0x7f11010e

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 289
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "INVALID_TIME"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const v6, 0x7f110053

    const v7, 0x7f11010c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 296
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "INSUFFICIENT_DATA"

    const/4 v11, 0x7

    const/4 v12, 0x7

    const v15, 0x7f11010b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 303
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "SENSOR_EOL"

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v6, -0x1

    const v7, 0x7f11010f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 310
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "DROPOUT_PHASE"

    const/16 v11, 0x9

    const/16 v12, 0x9

    const v14, 0x7f11004a

    const v15, 0x7f11010a

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 317
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "AUTO_LINK_MODE_ACTIVE"

    const/16 v3, 0xa

    const/16 v4, 0xa

    const v6, 0x7f110048

    const v7, 0x7f110109

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 324
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "SENSOR_LED_DISCONNECT"

    const/16 v11, 0xb

    const/16 v12, 0xb

    const/4 v14, -0x1

    const v15, 0x7f11010f

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 331
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "OTHER_FAILURE"

    const/16 v3, 0xc

    const/16 v4, 0xc

    const/4 v6, -0x1

    const v7, 0x7f11010d

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 338
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "THIS_ONE_USED_PREVIOUS_ONE_DELETED"

    const/16 v11, 0xd

    const/16 v12, 0xd

    const v15, 0x7f110107

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 345
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "THIS_SUSPICIOUS_PREVIOUS_DELETED"

    const/16 v3, 0xe

    const/16 v4, 0xe

    const v5, 0x7f110041

    const v6, 0x7f11003f

    const v7, 0x7f110107

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 352
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "INSUFFICIENT_DATA_POST_FS_ENTRY"

    const/16 v11, 0xf

    const/16 v12, 0xf

    const v13, 0x7f110041

    const v14, 0x7f11003f

    const v15, 0x7f11010b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 360
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "UNKNOWN_FAILURE"

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const v7, 0x7f110108

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 246
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sput-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput p3, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->id:I

    .line 379
    iput p4, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->title:I

    .line 380
    iput p5, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->message:I

    .line 381
    iput p6, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->shortTitle:I

    .line 382
    iput-boolean p7, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration:Z

    return-void
.end method

.method public static fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 5

    .line 390
    invoke-static {}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 391
    invoke-virtual {v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    sget-object p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 1

    .line 246
    const-class v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 1

    .line 246
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v0}, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->id:I

    return v0
.end method

.method public getMessage()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->message:I

    return v0
.end method

.method public getShortTitle()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->shortTitle:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->title:I

    return v0
.end method

.method public isCalibration()Z
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->suspiciousFsIsCalibration()Z

    move-result v0

    return v0

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration:Z

    return v0
.end method
