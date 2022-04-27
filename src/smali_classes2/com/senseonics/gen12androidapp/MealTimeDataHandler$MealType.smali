.class public final enum Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
.super Ljava/lang/Enum;
.source "MealTimeDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MealTimeDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MealType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 78
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v1, 0x0

    const-string v2, "BREAKFAST"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 79
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v2, 0x1

    const-string v3, "LUNCH"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 80
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v3, 0x2

    const-string v4, "SNACK"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 81
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v4, 0x3

    const-string v5, "DINNER"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 82
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v5, 0x4

    const-string v6, "SLEEP"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 83
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v6, 0x5

    const-string v7, "ALL"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 77
    sget-object v8, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 1

    .line 77
    const-class v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 1

    .line 77
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object v0
.end method
