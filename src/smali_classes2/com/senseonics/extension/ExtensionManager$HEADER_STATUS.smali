.class final enum Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
.super Ljava/lang/Enum;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/extension/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HEADER_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum UNKNOWN:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 43
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v1, 0x0

    const-string v2, "NO_CONNECTION"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 44
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v2, 0x1

    const-string v3, "BLIND"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 45
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v3, 0x2

    const-string v4, "HI"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 46
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v4, 0x3

    const-string v5, "LO"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 47
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v5, 0x4

    const-string v6, "BLIND_OTHER"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 48
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v6, 0x5

    const-string v7, "ABOVE_HIGH_ALARM"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 49
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v7, 0x6

    const-string v8, "BELOW_LOW_ALARM"

    invoke-direct {v0, v8, v7}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 50
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/4 v8, 0x7

    const-string v9, "ABOVE_HIGH_TARGET"

    invoke-direct {v0, v9, v8}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 51
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/16 v9, 0x8

    const-string v10, "BELOW_LOW_TARGET"

    invoke-direct {v0, v10, v9}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 52
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/16 v10, 0x9

    const-string v11, "WITHIN_TARGETS"

    invoke-direct {v0, v11, v10}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 53
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/16 v11, 0xa

    const-string v12, "UNKNOWN"

    invoke-direct {v0, v12, v11}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->UNKNOWN:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 42
    sget-object v13, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v13, v12, v1

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v2

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v3

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v4

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v5

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v6

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v7

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v8

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v9

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
    .locals 1

    .line 42
    const-class v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
    .locals 1

    .line 42
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    invoke-virtual {v0}, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-object v0
.end method
