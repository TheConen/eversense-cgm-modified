.class public final enum Lcom/senseonics/bluetoothle/CommandError;
.super Ljava/lang/Enum;
.source "CommandError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/CommandError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum USBOnly:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum Unused:Lcom/senseonics/bluetoothle/CommandError;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NotAllowed"

    invoke-direct {v0, v3, v1, v2}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

    .line 5
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v3, 0x2

    const-string v4, "Unused"

    invoke-direct {v0, v4, v2, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->Unused:Lcom/senseonics/bluetoothle/CommandError;

    .line 6
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v4, 0x3

    const-string v5, "InvalidCommandCode"

    invoke-direct {v0, v5, v3, v4}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

    .line 7
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v5, 0x4

    const-string v6, "InvalidCRC"

    invoke-direct {v0, v6, v4, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

    .line 8
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v6, 0x5

    const-string v7, "InvalidMessageLength"

    invoke-direct {v0, v7, v5, v6}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    .line 9
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v7, 0x6

    const-string v8, "BufferOverflow"

    invoke-direct {v0, v8, v6, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

    .line 10
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/4 v8, 0x7

    const-string v9, "InvalidCommandArgument"

    invoke-direct {v0, v9, v7, v8}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

    .line 11
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v9, 0x8

    const-string v10, "SensorReadError"

    invoke-direct {v0, v10, v8, v9}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

    .line 12
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v10, 0x9

    const-string v11, "LowBatteryError"

    invoke-direct {v0, v11, v9, v10}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

    .line 13
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v11, 0xa

    const-string v12, "SensorHardwareFailure"

    invoke-direct {v0, v12, v10, v11}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 14
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v12, 0xb

    const-string v13, "TransmitterHardwareFailure"

    invoke-direct {v0, v13, v11, v12}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 15
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v13, 0xc

    const-string v14, "SensorUnableToBeLinked"

    invoke-direct {v0, v14, v12, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

    .line 16
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v14, 0xd

    const-string v15, "TransmitterIsBusy"

    invoke-direct {v0, v15, v13, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

    .line 17
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v15, 0xe

    const-string v13, "InvalidRecordNumberRange"

    invoke-direct {v0, v13, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

    .line 18
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v13, 0xf

    const-string v14, "InvalidRecord"

    invoke-direct {v0, v14, v15, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 19
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v14, 0x10

    const-string v15, "CorruptRecord"

    invoke-direct {v0, v15, v13, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 20
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v15, 0x11

    const-string v13, "CriticalFaultError"

    invoke-direct {v0, v13, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

    .line 21
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v13, 0x12

    const-string v14, "CRCErrorLogicalBlock"

    invoke-direct {v0, v14, v15, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

    .line 22
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v14, 0x13

    const-string v15, "AccessDenied"

    invoke-direct {v0, v15, v13, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

    .line 23
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v15, 0x14

    const-string v13, "USBOnly"

    invoke-direct {v0, v13, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->USBOnly:Lcom/senseonics/bluetoothle/CommandError;

    .line 24
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const/16 v13, 0x15

    const-string v14, "NoDataAvailable"

    invoke-direct {v0, v14, v15, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

    .line 25
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v14, "GlucoseBlinded"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v13, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v14, 0x16

    new-array v14, v14, [Lcom/senseonics/bluetoothle/CommandError;

    .line 3
    sget-object v15, Lcom/senseonics/bluetoothle/CommandError;->NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v15, v14, v1

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->Unused:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v3

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v4

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v5

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v6

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v7

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v8

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v9

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v10

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v11

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v14, v12

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->USBOnly:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/bluetoothle/CommandError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/CommandError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/CommandError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/CommandError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return v0
.end method
