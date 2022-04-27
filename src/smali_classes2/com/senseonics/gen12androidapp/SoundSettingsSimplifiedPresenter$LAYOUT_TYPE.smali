.class final enum Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
.super Ljava/lang/Enum;
.source "SoundSettingsSimplifiedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LAYOUT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/4 v3, 0x2

    const-string v4, "MINUTE"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v5, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    aput-object v5, v4, v1

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    .locals 1

    .line 42
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    .locals 1

    .line 42
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    return-object v0
.end method
