.class public final enum Lcom/senseonics/util/Utils$MLCheckResult;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$MLCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$MLCheckResult;

.field public static final enum None:Lcom/senseonics/util/Utils$MLCheckResult;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

.field public static final enum ServerError:Lcom/senseonics/util/Utils$MLCheckResult;

.field public static final enum Timeout:Lcom/senseonics/util/Utils$MLCheckResult;

.field public static final enum Unknown:Lcom/senseonics/util/Utils$MLCheckResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 377
    new-instance v0, Lcom/senseonics/util/Utils$MLCheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Timeout"

    invoke-direct {v0, v3, v1, v2}, Lcom/senseonics/util/Utils$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->Timeout:Lcom/senseonics/util/Utils$MLCheckResult;

    .line 378
    new-instance v0, Lcom/senseonics/util/Utils$MLCheckResult;

    const/4 v3, 0x2

    const-string v4, "NotConnectedToWifi"

    invoke-direct {v0, v4, v2, v3}, Lcom/senseonics/util/Utils$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

    .line 379
    new-instance v0, Lcom/senseonics/util/Utils$MLCheckResult;

    const/4 v4, 0x3

    const-string v5, "ServerError"

    invoke-direct {v0, v5, v3, v4}, Lcom/senseonics/util/Utils$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->ServerError:Lcom/senseonics/util/Utils$MLCheckResult;

    .line 380
    new-instance v0, Lcom/senseonics/util/Utils$MLCheckResult;

    const/4 v5, 0x4

    const-string v6, "None"

    invoke-direct {v0, v6, v4, v5}, Lcom/senseonics/util/Utils$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->None:Lcom/senseonics/util/Utils$MLCheckResult;

    .line 381
    new-instance v0, Lcom/senseonics/util/Utils$MLCheckResult;

    const/4 v6, 0x5

    const-string v7, "Unknown"

    invoke-direct {v0, v7, v5, v6}, Lcom/senseonics/util/Utils$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->Unknown:Lcom/senseonics/util/Utils$MLCheckResult;

    new-array v6, v6, [Lcom/senseonics/util/Utils$MLCheckResult;

    .line 376
    sget-object v7, Lcom/senseonics/util/Utils$MLCheckResult;->Timeout:Lcom/senseonics/util/Utils$MLCheckResult;

    aput-object v7, v6, v1

    sget-object v1, Lcom/senseonics/util/Utils$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

    aput-object v1, v6, v2

    sget-object v1, Lcom/senseonics/util/Utils$MLCheckResult;->ServerError:Lcom/senseonics/util/Utils$MLCheckResult;

    aput-object v1, v6, v3

    sget-object v1, Lcom/senseonics/util/Utils$MLCheckResult;->None:Lcom/senseonics/util/Utils$MLCheckResult;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/senseonics/util/Utils$MLCheckResult;->$VALUES:[Lcom/senseonics/util/Utils$MLCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 386
    iput p3, p0, Lcom/senseonics/util/Utils$MLCheckResult;->id:I

    return-void
.end method

.method public static fromValue(I)Lcom/senseonics/util/Utils$MLCheckResult;
    .locals 5

    .line 394
    invoke-static {}, Lcom/senseonics/util/Utils$MLCheckResult;->values()[Lcom/senseonics/util/Utils$MLCheckResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 395
    invoke-virtual {v3}, Lcom/senseonics/util/Utils$MLCheckResult;->getValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$MLCheckResult;
    .locals 1

    .line 376
    const-class v0, Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$MLCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$MLCheckResult;
    .locals 1

    .line 376
    sget-object v0, Lcom/senseonics/util/Utils$MLCheckResult;->$VALUES:[Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$MLCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$MLCheckResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/senseonics/util/Utils$MLCheckResult;->id:I

    return v0
.end method
