.class public final enum Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
.super Ljava/lang/Enum;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLSensorLinkingError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 106
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v1, 0x0

    const-string v2, "IncompatibleSensorFile"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 107
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v2, 0x1

    const-string v3, "NotConnectedToWifi"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 108
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v3, 0x2

    const-string v4, "ServerError"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 109
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v4, 0x3

    const-string v5, "UnableToDownloadSensorFile"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 110
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v5, 0x4

    const-string v6, "TransmitterError"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 111
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v6, 0x5

    const-string v7, "IncompatibleFWVersion"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 112
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v7, 0x6

    const-string v8, "SyncTransmitterTimeFailure"

    invoke-direct {v0, v8, v7}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 113
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v8, 0x7

    const-string v9, "None"

    invoke-direct {v0, v9, v8}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 105
    sget-object v10, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v10, v9, v1

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v5

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v6

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 105
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 105
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object v0
.end method
