.class final enum Lcom/senseonics/view/SimpleDialogFragment$DialogState;
.super Ljava/lang/Enum;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/view/SimpleDialogFragment$DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 201
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v1, 0x0

    const-string v2, "NOT_CANCELLABLE"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 202
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v2, 0x1

    const-string v3, "CANCELLABLE"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 203
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v3, 0x2

    const-string v4, "CANCELLING"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 204
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v4, 0x3

    const-string v5, "FINISHING"

    invoke-direct {v0, v5, v4}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 200
    sget-object v6, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 200
    const-class v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 200
    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-virtual {v0}, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object v0
.end method
