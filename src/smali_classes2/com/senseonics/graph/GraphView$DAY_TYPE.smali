.class public final enum Lcom/senseonics/graph/GraphView$DAY_TYPE;
.super Ljava/lang/Enum;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/graph/GraphView$DAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 54
    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v1, 0x0

    const-string v2, "THIRDWIDTH_2SECTION"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v2, 0x1

    const-string v3, "HALFWIDTH_6SECTION"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v3, 0x2

    const-string v4, "WIDTHX2_12SECTION"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v4, 0x3

    const-string v5, "WIDTHX4_24SECTION"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v5, 0x4

    const-string v6, "WIDTHX8_TO_WIDTHX12_48SECTION"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/senseonics/graph/GraphView$DAY_TYPE;

    .line 53
    sget-object v7, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    aput-object v7, v6, v1

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    aput-object v1, v6, v2

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    aput-object v1, v6, v3

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/senseonics/graph/GraphView$DAY_TYPE;->$VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 1

    .line 53
    const-class v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 1

    .line 53
    sget-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->$VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/graph/GraphView$DAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object v0
.end method
