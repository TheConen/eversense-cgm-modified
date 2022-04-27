.class public final enum Lcom/senseonics/model/SIGNAL_STRENGTH;
.super Ljava/lang/Enum;
.source "SIGNAL_STRENGTH.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/SIGNAL_STRENGTH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;


# instance fields
.field private rawThreshold:I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v1, 0x0

    const-string v2, "NO_SIGNAL"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 18
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/16 v2, 0x15e

    const/4 v3, 0x1

    const-string v4, "POOR"

    invoke-direct {v0, v4, v3, v2, v2}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 19
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v2, 0x2

    const-string v4, "VERY_LOW"

    const/16 v5, 0x1f4

    const/16 v6, 0x18b

    invoke-direct {v0, v4, v2, v5, v6}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 20
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v4, 0x3

    const-string v5, "LOW"

    const/16 v6, 0x320

    const/16 v7, 0x1ee

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 21
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v5, 0x4

    const-string v6, "GOOD"

    const/16 v7, 0x514

    const/16 v8, 0x2c1

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 22
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v6, 0x5

    const-string v7, "EXCELLENT"

    const/16 v8, 0x640

    const/16 v9, 0x387

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 3
    sget-object v8, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    .line 29
    iput p4, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->rawThreshold:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, [Lcom/senseonics/model/SIGNAL_STRENGTH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method


# virtual methods
.method public getRawThreshold()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->rawThreshold:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    return v0
.end method
