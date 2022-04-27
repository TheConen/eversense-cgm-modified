.class public final enum Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATISTIC_TYPE2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$STATISTIC_TYPE2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 404
    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const/4 v1, 0x0

    const-string v2, "ABOVE_TARGET_LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const/4 v2, 0x1

    const-string v3, "BELOW_TARGET_LEVEL"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const/4 v3, 0x2

    const-string v4, "WITHIN_TARGET_LEVELS"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    .line 403
    sget-object v5, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    aput-object v5, v4, v1

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
    .locals 1

    .line 403
    const-class v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
    .locals 1

    .line 403
    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-object v0
.end method
