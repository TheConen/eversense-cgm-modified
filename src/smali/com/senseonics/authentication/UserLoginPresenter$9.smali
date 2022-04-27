.class Lcom/senseonics/authentication/UserLoginPresenter$9;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter;->handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/mycircle/model/UserProfileDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/mycircle/model/UserProfileDto;)V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$300(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/UserAccountModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/account/UserAccountModel;->saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V

    .line 151
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p1}, Lcom/senseonics/authentication/UserLoginPresenter;->access$600(Lcom/senseonics/authentication/UserLoginPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p1}, Lcom/senseonics/authentication/UserLoginPresenter;->access$700(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {p1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->hideProgress()V

    .line 154
    new-instance v4, Lcom/senseonics/authentication/UserLoginPresenter$9$1;

    invoke-direct {v4, p0}, Lcom/senseonics/authentication/UserLoginPresenter$9$1;-><init>(Lcom/senseonics/authentication/UserLoginPresenter$9;)V

    .line 165
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p1}, Lcom/senseonics/authentication/UserLoginPresenter;->access$900(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const v1, 0x7f110093

    const v2, 0x7f110185

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/senseonics/mycircle/model/UserProfileDto;

    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$9;->call(Lcom/senseonics/mycircle/model/UserProfileDto;)V

    return-void
.end method
