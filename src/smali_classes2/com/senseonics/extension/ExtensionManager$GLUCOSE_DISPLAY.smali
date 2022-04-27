.class final enum Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;
.super Ljava/lang/Enum;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/extension/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GLUCOSE_DISPLAY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

.field public static final enum VALID:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 34
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v1, 0x0

    const-string v2, "NO_CONNECTION"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 35
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v2, 0x1

    const-string v3, "BLIND"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 36
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v3, 0x2

    const-string v4, "LO"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 37
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v4, 0x3

    const-string v5, "HI"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 38
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v5, 0x4

    const-string v6, "BLIND_OTHER"

    invoke-direct {v0, v6, v5}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 39
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v6, 0x5

    const-string v7, "VALID"

    invoke-direct {v0, v7, v6}, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->VALID:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    .line 33
    sget-object v8, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    aput-object v8, v7, v1

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    aput-object v1, v7, v2

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    aput-object v1, v7, v3

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    aput-object v1, v7, v4

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;
    .locals 1

    .line 33
    const-class v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;
    .locals 1

    .line 33
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    invoke-virtual {v0}, [Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    return-object v0
.end method
