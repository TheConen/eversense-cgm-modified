.class public Lcom/senseonics/fragments/AboutFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "AboutFragment.java"


# instance fields
.field private aboutView:Landroid/view/View;

.field private eula:Landroid/widget/LinearLayout;

.field private feedback:Landroid/widget/LinearLayout;

.field protected fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private help:Landroid/widget/LinearLayout;

.field private myAccount:Landroid/widget/LinearLayout;

.field private myAccountTextView:Landroid/widget/TextView;

.field private myProductInfo:Landroid/widget/LinearLayout;

.field private mySensor:Landroid/widget/LinearLayout;

.field private myTransmitter:Landroid/widget/LinearLayout;

.field private privacyStatement:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private OpenHelpLink(Landroid/content/Context;)V
    .locals 2

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://global.eversensediabetes.com/distributors/"

    .line 162
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/AboutFragment;Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/AboutFragment;->OpenHelpLink(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->myTransmitter:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$1;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->myProductInfo:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$2;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->mySensor:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$3;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 118
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addMyAccountPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/senseonics/fragments/AboutFragment$4;

    invoke-direct {v2, p0}, Lcom/senseonics/fragments/AboutFragment$4;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_2

    const v0, 0x7f060021

    goto :goto_2

    :cond_2
    const v0, 0x7f060089

    :goto_2
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->eula:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$5;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$5;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->privacyStatement:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$6;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$6;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->feedback:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$7;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$7;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->help:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$8;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$8;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c0075

    const/4 p3, 0x0

    .line 58
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090221

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myTransmitter:Landroid/widget/LinearLayout;

    .line 61
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09021f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->mySensor:Landroid/widget/LinearLayout;

    .line 62
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09021a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    .line 63
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09021b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccountTextView:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myProductInfo:Landroid/widget/LinearLayout;

    .line 65
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090144

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->eula:Landroid/widget/LinearLayout;

    .line 66
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090287

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->privacyStatement:Landroid/widget/LinearLayout;

    .line 67
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090152

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->feedback:Landroid/widget/LinearLayout;

    .line 70
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090178

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->help:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->initViews()V

    .line 73
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startMailClientIfExists()V
    .locals 13

    const-string v0, ""

    const v1, 0x7f11009c

    .line 171
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11009b

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n\n\n\n\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-------------------------------------------\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1102ed

    invoke-virtual {p0, v5}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f1101f2

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1101db

    invoke-virtual {p0, v4}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f11029e

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f1101ad

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v6

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110319

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110175

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v6

    :goto_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110213

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v6

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110090

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v7

    if-ltz v7, :cond_6

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v7, v6

    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f1100a7

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v7

    sget-object v10, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v7, v10, :cond_7

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_7
    move-object v7, v6

    :goto_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110035

    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v7

    sget-object v10, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v7, v10, :cond_8

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_8
    move-object v7, v6

    :goto_8
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f11025c

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f11029f

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_9
    move-object v9, v6

    :goto_9
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 213
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f110160

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v9}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_a
    move-object v9, v6

    :goto_a
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f110161

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_b
    move-object v9, v6

    :goto_b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f1100d2

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object v9, v6

    :goto_c
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_11

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110029

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 228
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v5

    .line 230
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v0

    .line 233
    :goto_d
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 234
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 235
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 238
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1100d0

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    move-object v5, v6

    :goto_e
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f110197

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_e

    goto :goto_f

    :cond_e
    move-object v7, v6

    :goto_f
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1101ac

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_f

    goto :goto_10

    :cond_f
    move-object v9, v6

    :goto_10
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f11002a

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_10

    move-object v6, v10

    :cond_10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 250
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    .line 268
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 272
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    .line 273
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 274
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mail"

    .line 278
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 279
    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_13
    const-string v7, "%"

    const-string v8, "%25"

    .line 281
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:?subject="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&body="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 285
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 292
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 293
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "There are no email clients installed."

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 298
    :cond_15
    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v1, 0x7f11009a

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    new-array v1, v11, [Landroid/os/Parcelable;

    .line 300
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    .line 299
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_12
    return-void
.end method
