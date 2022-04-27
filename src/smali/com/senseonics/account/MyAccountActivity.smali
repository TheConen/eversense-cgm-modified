.class public Lcom/senseonics/account/MyAccountActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "MyAccountActivity.java"

# interfaces
.implements Lcom/senseonics/account/UserProfilePresenter$UserProfileView;


# instance fields
.field email:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090138
    .end annotation
.end field

.field email_label:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090139
    .end annotation
.end field

.field logoutButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d6
    .end annotation
.end field

.field presenter:Lcom/senseonics/account/UserProfilePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field userImage:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038e
    .end annotation
.end field

.field user_display_name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038d
    .end annotation
.end field

.field user_image_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090390
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity;->presenter:Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity;->presenter:Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {v0}, Lcom/senseonics/account/UserProfilePresenter;->detach()V

    return-void
.end method

.method public displayProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity;->user_display_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p0, p2, p1}, Lcom/senseonics/view/GlideHelper;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 66
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity;->email:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getRes()Landroid/content/res/Resources;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/senseonics/account/MyAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public goToLogin()V
    .locals 2

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/senseonics/account/MyAccountActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 46
    invoke-virtual {p0, p1}, Lcom/senseonics/account/MyAccountActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f1101d5

    .line 48
    invoke-virtual {p0, p1}, Lcom/senseonics/account/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/account/MyAccountActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public setupProfileViews(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity;->email_label:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1100ef

    invoke-virtual {p0, v1}, Lcom/senseonics/account/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity;->user_image_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/senseonics/account/MyAccountActivity;->logoutButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showProfileImageSelector(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 80
    fill-array-data v0, :array_0

    .line 81
    new-instance v1, Lcom/senseonics/account/MyAccountActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/account/MyAccountActivity$1;-><init>(Lcom/senseonics/account/MyAccountActivity;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    const p1, 0x7f110086

    .line 99
    invoke-virtual {p0, p1, v0, v1}, Lcom/senseonics/account/MyAccountActivity;->showBottomSheet(I[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f110315
        0x7f1100cb
        0x7f11007f
    .end array-data
.end method
