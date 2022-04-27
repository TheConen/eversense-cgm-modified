.class public Lcom/senseonics/gen12androidapp/UserAccountActivity;
.super Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.source "UserAccountActivity.java"


# instance fields
.field private switchAutoSync:Landroid/widget/Switch;

.field private syncDaysValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private tvDefaultSyncDaysValue:Landroid/widget/TextView;

.field private tvLastSyncedOn:Landroid/widget/TextView;

.field uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->syncDaysValues:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/Switch;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->switchAutoSync:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->syncDaysValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->tvDefaultSyncDaysValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/UserAccountActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->showDialog(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->hideProgressDialog()V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)V"
        }
    .end annotation

    .line 266
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialog:Landroid/app/Dialog;

    .line 271
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private updateTvLastSyncedOn()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->tvLastSyncedOn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeStringFromPreference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 254
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne p1, v0, :cond_0

    const p1, 0x7f110170

    .line 256
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1102c7

    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->resetBtnTextDismissProgressDialog()V

    return-void
.end method

.method protected createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 214
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c006c

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090338

    .line 220
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09035a

    .line 223
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 224
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090264

    .line 227
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 228
    new-instance p2, Lcom/senseonics/gen12androidapp/UserAccountActivity$5;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity$5;-><init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public getMinuteItemPosition(Ljava/util/ArrayList;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 203
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    array-length v3, v2

    if-lez v3, :cond_0

    .line 205
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 43
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->initializeLayout(I)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1101d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->findViewForBtnSync()V

    const p1, 0x7f09008e

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->switchAutoSync:Landroid/widget/Switch;

    .line 50
    invoke-static {p1}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    const p1, 0x7f090371

    .line 51
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->tvLastSyncedOn:Landroid/widget/TextView;

    const p1, 0x7f09036d

    .line 52
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->tvDefaultSyncDaysValue:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getSyncDaysFromPreference()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->switchAutoSync:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->switchAutoSync:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string p1, "AccountEnableAutoSync"

    .line 60
    invoke-static {p0, p1, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->switchAutoSync:Landroid/widget/Switch;

    new-instance v0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;-><init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->setupBtnSyncOnClickEvent()V

    .line 89
    new-instance p1, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;-><init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V

    const v0, 0x7f0901b8

    .line 105
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 106
    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;-><init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->updateTvLastSyncedOn()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->hideProgressDialog()V

    .line 144
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->updateTvLastSyncedOn()V

    return-void
.end method

.method protected setupBtnSyncOnClickEvent()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->btnSync:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;-><init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
