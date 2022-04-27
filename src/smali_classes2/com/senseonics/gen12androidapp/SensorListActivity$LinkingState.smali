.class public final enum Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
.super Ljava/lang/Enum;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum COMPLETE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 100
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v2, 0x1

    const-string v3, "STEP1"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v3, 0x2

    const-string v4, "STEP2"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v4, 0x3

    const-string v5, "STEP3"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v5, 0x4

    const-string v6, "COMPLETE"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->COMPLETE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 99
    sget-object v7, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 1

    .line 99
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 1

    .line 99
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object v0
.end method
