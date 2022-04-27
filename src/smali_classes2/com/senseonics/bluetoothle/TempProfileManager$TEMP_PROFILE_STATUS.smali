.class public final enum Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;
.super Ljava/lang/Enum;
.source "TempProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/TempProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TEMP_PROFILE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

.field public static final enum TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

.field public static final enum TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

.field public static final enum TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const/4 v1, 0x0

    const-string v2, "TEMP_PROFILE_STATUS_ALREADY_DISABLED"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    .line 51
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const/4 v2, 0x1

    const-string v3, "TEMP_PROFILE_STATUS_NEED_TO_DISABLE"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    .line 52
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const/4 v3, 0x2

    const-string v4, "TEMP_PROFILE_STATUS_IN_PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    .line 49
    sget-object v5, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    aput-object v5, v4, v1

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;
    .locals 1

    .line 49
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;
    .locals 1

    .line 49
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    return-object v0
.end method
