.class public final enum Lcom/senseonics/util/Utils$ARROW_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ARROW_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$ARROW_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;


# instance fields
.field private imageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 357
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v1, 0x0

    const-string v2, "STALE"

    const v3, 0x7f0801af

    invoke-direct {v0, v2, v1, v3}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 358
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v2, 0x1

    const-string v3, "FALLING_FAST"

    const v4, 0x7f0801ad

    invoke-direct {v0, v3, v2, v4}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 359
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v3, 0x2

    const-string v4, "FALLING"

    const v5, 0x7f0801ac

    invoke-direct {v0, v4, v3, v5}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 360
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v4, 0x3

    const-string v5, "FLAT"

    const v6, 0x7f0801ae

    invoke-direct {v0, v5, v4, v6}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 361
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v5, 0x4

    const-string v6, "RISING"

    const v7, 0x7f0801b0

    invoke-direct {v0, v6, v5, v7}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 362
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v6, 0x5

    const-string v7, "RISING_FAST"

    const v8, 0x7f0801b1

    invoke-direct {v0, v7, v6, v8}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 356
    sget-object v8, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    iput p3, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 356
    const-class v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 356
    sget-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$ARROW_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return v0
.end method
