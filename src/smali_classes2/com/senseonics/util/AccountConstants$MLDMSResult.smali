.class public final enum Lcom/senseonics/util/AccountConstants$MLDMSResult;
.super Ljava/lang/Enum;
.source "AccountConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLDMSResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AccountConstants$MLDMSResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 88
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v1, 0x0

    const-string v2, "InvalidDeviceType"

    const/4 v3, -0x3

    invoke-direct {v0, v2, v1, v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 89
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v2, 0x1

    const-string v3, "InvalidUserCredentials"

    const/4 v4, -0x2

    invoke-direct {v0, v3, v2, v4}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 90
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v3, 0x2

    const-string v4, "GeneralErrorSavingData"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 91
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v4, 0x3

    const-string v5, "DataSaved"

    invoke-direct {v0, v5, v4, v1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 92
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v5, 0x4

    const-string v6, "Timeout"

    invoke-direct {v0, v6, v5, v2}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 93
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v6, 0x5

    const-string v7, "NotConnectedToWifi"

    invoke-direct {v0, v7, v6, v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 94
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v7, 0x6

    const-string v8, "ServerError"

    invoke-direct {v0, v8, v7, v4}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 95
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v8, 0x7

    const-string v9, "IDNotFound"

    invoke-direct {v0, v9, v8, v5}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 96
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/16 v9, 0x8

    const-string v10, "None"

    invoke-direct {v0, v10, v9, v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 87
    sget-object v11, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v11, v10, v1

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v2

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v3

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v4

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v5

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v6

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v7

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/senseonics/util/AccountConstants$MLDMSResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->id:I

    return-void
.end method

.method public static fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 5

    .line 109
    invoke-static {}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->values()[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 1

    .line 87
    const-class v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 1

    .line 87
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/AccountConstants$MLDMSResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->id:I

    return v0
.end method
