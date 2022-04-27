.class Lcom/senseonics/account/UserProfilePresenter$7;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->handleLogoutClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$7;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$7;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->access$1000(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/util/AccountConstants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedIn()V

    .line 159
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$7;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->access$1100(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->goToLogin()V

    return-void
.end method
