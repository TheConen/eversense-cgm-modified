.class public final enum Lcom/senseonics/model/BATTERY_LEVEL;
.super Ljava/lang/Enum;
.source "BATTERY_LEVEL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/BATTERY_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;


# instance fields
.field private strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_NEG_1"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 5
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v2, 0x1

    const-string v3, "BL_0"

    invoke-direct {v0, v3, v2, v1}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 6
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v3, 0x2

    const-string v4, "BL_5"

    invoke-direct {v0, v4, v3, v2}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 7
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v4, 0x3

    const-string v5, "BL_10"

    invoke-direct {v0, v5, v4, v3}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 8
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v5, 0x4

    const-string v6, "BL_25"

    invoke-direct {v0, v6, v5, v4}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 9
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v6, 0x5

    const-string v7, "BL_35"

    invoke-direct {v0, v7, v6, v5}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 10
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v7, 0x6

    const-string v8, "BL_45"

    invoke-direct {v0, v8, v7, v6}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 11
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/4 v8, 0x7

    const-string v9, "BL_55"

    invoke-direct {v0, v9, v8, v7}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 12
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v9, 0x8

    const-string v10, "BL_65"

    invoke-direct {v0, v10, v9, v8}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 13
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v10, 0x9

    const-string v11, "BL_75"

    invoke-direct {v0, v11, v10, v9}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 14
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v11, 0xa

    const-string v12, "BL_85"

    invoke-direct {v0, v12, v11, v10}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 15
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v12, 0xb

    const-string v13, "BL_95"

    invoke-direct {v0, v13, v12, v11}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 16
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v13, 0xc

    const-string v14, "BL_100"

    invoke-direct {v0, v14, v13, v12}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/senseonics/model/BATTERY_LEVEL;

    .line 3
    sget-object v15, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v15, v14, v1

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v2

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v3

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v4

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v5

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v6

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v7

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v8

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v9

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v10

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v11

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    return-void
.end method

.method public static fromStrength(I)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 5

    .line 25
    invoke-static {}, Lcom/senseonics/model/BATTERY_LEVEL;->values()[Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v0}, [Lcom/senseonics/model/BATTERY_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method
