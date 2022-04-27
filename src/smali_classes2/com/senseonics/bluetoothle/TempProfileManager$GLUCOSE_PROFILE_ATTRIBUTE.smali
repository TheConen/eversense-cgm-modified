.class public final enum Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
.super Ljava/lang/Enum;
.source "TempProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/TempProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLUCOSE_PROFILE_ATTRIBUTE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v1, 0x0

    const-string v2, "GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 39
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v2, 0x1

    const-string v3, "GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 40
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v3, 0x2

    const-string v4, "GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 41
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v4, 0x3

    const-string v5, "GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 37
    sget-object v6, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v6, v5, v1

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v5, v2

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 37
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 37
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method
