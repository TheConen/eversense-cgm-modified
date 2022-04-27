.class public final enum Lcom/senseonics/util/Utils$CAL_PHASE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAL_PHASE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$CAL_PHASE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 353
    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v2, 0x1

    const-string v3, "WARM_UP"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v3, 0x2

    const-string v4, "INITIALIZATION"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v4, 0x3

    const-string v5, "DAILY_CALIBRATION"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v5, 0x4

    const-string v6, "SUSPICIOUS"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v6, 0x5

    const-string v7, "DROPOUT"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v7, 0x6

    const-string v8, "DEBUG"

    invoke-direct {v0, v8, v7}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v8, 0x7

    const-string v9, "UNDERTERMINED"

    invoke-direct {v0, v9, v8}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/senseonics/util/Utils$CAL_PHASE;

    .line 352
    sget-object v10, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v10, v9, v1

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v2

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v3

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v4

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v5

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v6

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/senseonics/util/Utils$CAL_PHASE;->$VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 352
    const-class v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 352
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->$VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$CAL_PHASE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method
