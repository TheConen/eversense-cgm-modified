.class public final enum Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;
.super Ljava/lang/Enum;
.source "CustomDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/dialogs/CustomDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIALOG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

.field public static final enum ALERT_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

.field public static final enum CALIBRATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

.field public static final enum NOTIFICATION_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

.field public static final enum PREDICTIVE_RATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    const/4 v1, 0x0

    const-string v2, "ALERT_DIALOG"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ALERT_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    .line 52
    new-instance v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    const/4 v2, 0x1

    const-string v3, "CALIBRATE_DIALOG"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->CALIBRATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    .line 53
    new-instance v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    const/4 v3, 0x2

    const-string v4, "PREDICTIVE_RATE_DIALOG"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->PREDICTIVE_RATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    .line 54
    new-instance v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    const/4 v4, 0x3

    const-string v5, "NOTIFICATION_DIALOG"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->NOTIFICATION_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    .line 50
    sget-object v6, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ALERT_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    aput-object v6, v5, v1

    sget-object v1, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->CALIBRATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    aput-object v1, v5, v2

    sget-object v1, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->PREDICTIVE_RATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->$VALUES:[Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;
    .locals 1

    .line 50
    const-class v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;
    .locals 1

    .line 50
    sget-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->$VALUES:[Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    return-object v0
.end method
