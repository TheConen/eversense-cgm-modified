.class Lcom/senseonics/account/MyAccountActivity$1;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/MyAccountActivity;->showProfileImageSelector(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/MyAccountActivity;

.field final synthetic val$deleteImageListener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/senseonics/account/MyAccountActivity;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/senseonics/account/MyAccountActivity$1;->this$0:Lcom/senseonics/account/MyAccountActivity;

    iput-object p2, p0, Lcom/senseonics/account/MyAccountActivity$1;->val$deleteImageListener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    if-nez p2, :cond_0

    .line 85
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity$1;->this$0:Lcom/senseonics/account/MyAccountActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity$1;->this$0:Lcom/senseonics/account/MyAccountActivity;

    const-class v1, Lcom/senseonics/account/ProfileImageSelectActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/senseonics/account/MyAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity$1;->this$0:Lcom/senseonics/account/MyAccountActivity;

    const v1, 0x7f1100cc

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/senseonics/account/MyAccountActivity$1;->val$deleteImageListener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    const/4 v5, 0x1

    const v6, 0x7f11007f

    const v7, 0x7f110092

    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/account/MyAccountActivity;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    :cond_1
    :goto_0
    return-void
.end method
