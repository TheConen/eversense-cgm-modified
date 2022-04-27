.class public Lcom/senseonics/bluetoothle/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final MAX_REPEATED_ALERTS:I

.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field private appUpdateDialog:Landroid/app/Dialog;

.field private final customDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public doNotDisturbAlertDialog:Landroid/app/Dialog;

.field public moreThanMaxAlertDialog:Landroid/app/Dialog;

.field private nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

.field private tempProfileAlertDialog:Landroid/app/Dialog;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/bluetoothle/DialogUtils;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            "Lcom/senseonics/util/AlertHelper;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 84
    iput v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->MAX_REPEATED_ALERTS:I

    .line 1132
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$26;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils$26;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    .line 92
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 93
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 94
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 95
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-void
.end method

.method private HideKeyboard(Landroid/app/Dialog;)V
    .locals 1

    .line 1316
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->openPlayStore(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/bluetoothle/DialogUtils;)Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    return-object p0
.end method

.method private addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 260
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;",
            ">;)V"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 868
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    .line 870
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    .line 871
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090357

    .line 873
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 874
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090338

    .line 877
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 879
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 878
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900bb

    .line 881
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 882
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$19;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$19;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090264

    .line 891
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 892
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$20;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$20;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 908
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/NotificationsActivity;",
            ">;)V"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 668
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    .line 670
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090357

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 674
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090338

    .line 677
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 679
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 678
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900bb

    .line 681
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 682
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$13;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$13;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090264

    .line 695
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 696
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    new-instance p1, Lcom/senseonics/bluetoothle/DialogUtils$14;

    invoke-direct {p1, p0}, Lcom/senseonics/bluetoothle/DialogUtils$14;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 707
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;",
            ">;)V"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 807
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    .line 809
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    .line 810
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090357

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 813
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 814
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090338

    .line 816
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 818
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 817
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900bb

    .line 820
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 821
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$17;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$17;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090264

    .line 830
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 831
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$18;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$18;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 847
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V
    .locals 2

    .line 733
    iget-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/app/Dialog;->isShowing()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 737
    move-object p6, p1

    check-cast p6, Landroid/app/Activity;

    invoke-virtual {p6}, Landroid/app/Activity;->isFinishing()Z

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_0

    .line 741
    :cond_1
    new-instance p6, Landroid/app/Dialog;

    const v0, 0x7f120105

    invoke-direct {p6, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    .line 743
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    const v0, 0x7f0c005e

    const/4 v1, 0x0

    .line 744
    invoke-virtual {p6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    const v0, 0x7f090357

    .line 746
    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090338

    .line 750
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 752
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 751
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900bb

    .line 754
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 755
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$15;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$15;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090264

    .line 764
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 765
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$16;

    invoke-direct {p3, p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils$16;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 777
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private openPlayStore(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 724
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 925
    :goto_0
    new-instance v10, Landroid/app/Dialog;

    const v11, 0x7f120104

    invoke-direct {v10, v1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 926
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0c0040

    const/4 v13, 0x0

    .line 927
    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    if-nez v8, :cond_1

    .line 930
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 931
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit16 v13, v13, 0x96

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 932
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const-string v12, ""

    .line 935
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const v14, 0x7f0902c8

    if-eqz v13, :cond_2

    .line 936
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    const v14, 0x7f0c00e3

    .line 937
    invoke-virtual {v13, v14}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 938
    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_1

    .line 940
    :cond_2
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    const v14, 0x7f0c00e4

    .line 941
    invoke-virtual {v13, v14}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 942
    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :goto_1
    const v13, 0x7f090259

    .line 945
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 946
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v13, 0x7f09035a

    .line 949
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 950
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f090168

    .line 953
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 954
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f090351

    .line 957
    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v10

    .line 958
    invoke-virtual/range {p11 .. p11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v9

    .line 959
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 960
    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 961
    invoke-static {v5, v1}, Lcom/senseonics/util/TimeProvider;->formatWeekDateTime(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0900a0

    .line 964
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 967
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v7, " "

    .line 969
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f070053

    if-eqz v8, :cond_4

    .line 971
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 972
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v9, v10, v7, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 973
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v5, 0x7f09005a

    .line 977
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 978
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string v6, "</font>"

    .line 979
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 980
    invoke-static/range {p5 .. p5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 982
    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v8, :cond_6

    .line 986
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 988
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const v4, 0x7f090363

    .line 992
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 993
    iget-object v5, v0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0801ba

    if-ne v2, v4, :cond_7

    const v2, 0x7f060021

    .line 997
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 998
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 999
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1000
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v2, 0x7f09019e

    .line 1003
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1004
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeAlertHelp()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x8

    .line 1005
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 1007
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$21;

    move-object/from16 v5, p10

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/senseonics/bluetoothle/DialogUtils$21;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const v2, 0x7f0900bb

    .line 1033
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090264

    .line 1034
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v4, p8

    .line 1037
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1038
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$22;

    move-object/from16 v5, p6

    move-object/from16 v6, v16

    invoke-direct {v4, v0, v6, v5}, Lcom/senseonics/bluetoothle/DialogUtils$22;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_9
    move-object/from16 v5, p6

    move-object/from16 v6, v16

    :goto_5
    move-object/from16 v3, p7

    .line 1049
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    new-instance v3, Lcom/senseonics/bluetoothle/DialogUtils$23;

    invoke-direct {v3, v0, v6, v5}, Lcom/senseonics/bluetoothle/DialogUtils$23;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 1060
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070169

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    if-nez v8, :cond_a

    .line 1068
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_6

    .line 1070
    :cond_a
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_6
    return-object v6
.end method


# virtual methods
.method public addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 253
    new-instance v0, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V
    .locals 1

    .line 332
    new-instance v0, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 2

    .line 469
    new-instance v0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 393
    new-instance v0, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;
    .locals 12

    .line 269
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v11

    .line 270
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 271
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    .line 278
    sget-object v2, Lcom/senseonics/bluetoothle/DialogUtils$36;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const v3, 0x7f110021

    const v4, 0x7f0801ba

    const-string v5, ""

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v5

    move-object v4, v3

    goto :goto_3

    .line 290
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 292
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 293
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v3

    .line 291
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 295
    :goto_0
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 281
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 283
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 284
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v3

    .line 282
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 285
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 286
    :goto_1
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v5, v2

    move v2, v4

    move-object v4, v3

    move-object v3, v0

    .line 301
    :goto_3
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$4;

    invoke-direct {v6, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$4;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/AlertDialogInfo;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1101fc

    .line 315
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 316
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 317
    invoke-static {p1, v1, p2}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    .line 313
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 320
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 248
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    .line 338
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v11

    .line 340
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$5;

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v12, v2, v0}, Lcom/senseonics/bluetoothle/DialogUtils$5;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;)V

    .line 354
    iget-object v0, v12, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 355
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_0

    .line 356
    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    const v2, 0x7f1101f5

    .line 362
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110066

    .line 363
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v4, :cond_1

    const v2, 0x7f1101fc

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    :cond_1
    move-object v7, v2

    move-object v8, v3

    .line 371
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v2

    .line 372
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v13, v12, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v5, v12, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 374
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v16

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v18

    move-object v14, v0

    invoke-virtual/range {v13 .. v18}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object v10, v12, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 379
    invoke-static {v1, v0, v10}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 369
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V
    .locals 0

    .line 327
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;
    .locals 6

    .line 1080
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 1081
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1082
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v2, 0x0

    const v3, 0x7f0c004d

    .line 1083
    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0900f6

    .line 1085
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/datepicker/DatePicker;

    const v4, 0x7f0900bb

    .line 1086
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1087
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$24;

    invoke-direct {v5, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$24;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090264

    .line 1095
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1096
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$25;

    invoke-direct {v5, p0, v3, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$25;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p5, 0x1

    .line 1116
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v4, 0x2

    .line 1117
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1118
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1119
    invoke-virtual {v3, p5, v4, p2, v2}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 1121
    invoke-virtual {v3, v1}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1122
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1123
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    .line 1125
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1127
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1143
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x7f120105

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1144
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v9, 0x0

    const v2, 0x7f0c004e

    .line 1145
    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0900f6

    .line 1147
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lnet/simonvt/datepicker/DatePicker;

    const v0, 0x7f090350

    .line 1149
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v0, 0x60000

    .line 1150
    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1151
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1152
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1155
    :cond_0
    new-instance v14, Lcom/senseonics/bluetoothle/DialogUtils$27;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$27;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;ZLjava/util/Calendar;)V

    .line 1211
    invoke-virtual {v12, v14}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    const v0, 0x7f0900bb

    .line 1213
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1214
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$28;

    invoke-direct {v1, v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils$28;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090264

    .line 1222
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 1223
    new-instance v15, Lcom/senseonics/bluetoothle/DialogUtils$29;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$29;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1245
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1246
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1247
    invoke-virtual {v11, v0, v1, v2, v9}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    const/4 v0, 0x0

    .line 1249
    invoke-virtual {v11, v0}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1251
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    const/16 v0, 0xb

    .line 1253
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    const/16 v0, 0xc

    .line 1254
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1256
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1258
    invoke-direct {v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    .line 1260
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 474
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v11

    .line 476
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    .line 477
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v9

    .line 479
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    const-string v10, ""

    if-lez v2, :cond_0

    .line 482
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_0

    :cond_0
    move-object v13, v10

    .line 484
    :goto_0
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    if-lez v2, :cond_2

    .line 487
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11030f

    if-ne v2, v4, :cond_1

    .line 490
    sget v2, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-static {v1, v3, v2}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v14, v3

    goto :goto_1

    :cond_2
    move-object v14, v10

    .line 494
    :goto_1
    iget-object v2, v12, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v3, v12, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v7

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 499
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_3

    .line 500
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$7;

    invoke-direct {v2, v12, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$7;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    :goto_2
    move-object v6, v2

    goto :goto_4

    .line 516
    :cond_3
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_4

    .line 517
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$8;

    invoke-direct {v2, v12, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$8;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 533
    :cond_4
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_5

    .line 534
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$9;

    invoke-direct {v2, v12, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$9;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 551
    :cond_5
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v2, v3, :cond_6

    goto :goto_3

    .line 571
    :cond_6
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$11;

    invoke-direct {v2, v12, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$11;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 554
    :cond_7
    :goto_3
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$10;

    invoke-direct {v2, v12, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$10;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 590
    :goto_4
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getRightButtonText()I

    move-result v0

    if-lez v0, :cond_8

    .line 593
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :cond_8
    const v0, 0x7f1101fc

    .line 596
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v2, :cond_9

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v2, :cond_9

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v2, :cond_a

    :cond_9
    const v0, 0x7f1101f5

    .line 600
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v7, v0

    .line 606
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v15

    iget-object v0, v12, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 607
    invoke-static {v1, v8, v0}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move-object v3, v13

    move-object v4, v14

    move-object v8, v10

    move v9, v15

    move-object/from16 v10, v16

    .line 603
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 464
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v7, p5

    .line 1384
    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "Lcom/senseonics/util/dialogs/DoublePickerManager;",
            "IIZZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p7

    .line 1394
    new-instance v8, Landroid/app/Dialog;

    const v3, 0x7f120105

    move-object v4, p1

    invoke-direct {v8, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1395
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00e7

    const/4 v5, 0x0

    .line 1396
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v3, 0x7f090357

    .line 1398
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v4, p2

    .line 1399
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09027c

    .line 1401
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/numberpicker/NumberPicker;

    .line 1402
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    move v5, v10

    .line 1403
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1404
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/util/Item;

    invoke-virtual {v6}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1405
    :cond_0
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1406
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1407
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/high16 v4, 0x60000

    .line 1408
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1409
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1410
    invoke-virtual {v3, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    const v5, 0x7f09027d

    .line 1412
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/simonvt/numberpicker/NumberPicker;

    if-eqz v1, :cond_2

    .line 1414
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    .line 1415
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    move v12, v10

    .line 1416
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1417
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/senseonics/util/Item;

    invoke-virtual {v13}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1418
    :cond_1
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1419
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v5, v12}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1420
    invoke-virtual {v5, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1422
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    move/from16 v4, p8

    .line 1423
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    :cond_2
    if-eqz p9, :cond_4

    .line 1427
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 1429
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1430
    :cond_3
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$32;

    invoke-direct {v4, p0, v0, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$32;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;ILnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_4
    if-eqz p10, :cond_7

    if-nez v2, :cond_5

    .line 1448
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1449
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x24

    if-ne v2, v0, :cond_6

    .line 1452
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1453
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 1457
    :cond_6
    :goto_2
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$33;

    invoke-direct {v0, p0, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$33;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_7
    const v0, 0x7f090264

    .line 1478
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1479
    new-instance v12, Lcom/senseonics/bluetoothle/DialogUtils$34;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils$34;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/events/EventUtils$PickerManager;Lnet/simonvt/numberpicker/NumberPicker;Lcom/senseonics/util/dialogs/DoublePickerManager;Lnet/simonvt/numberpicker/NumberPicker;Landroid/app/Dialog;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bb

    .line 1492
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1493
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$35;

    invoke-direct {v1, p0, v8}, Lcom/senseonics/bluetoothle/DialogUtils$35;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1501
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v8
.end method

.method public createPlacementDialog(Landroid/app/Activity;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)Landroid/app/Dialog;
    .locals 7

    .line 148
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$1;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)V

    const p2, 0x7f11021d

    .line 160
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f11021c

    .line 161
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11032f

    .line 162
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11014d

    .line 163
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f120105

    invoke-direct {v4, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v5, 0x7f0c005e

    const/4 v6, 0x0

    .line 168
    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v5, 0x7f090357

    .line 170
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 171
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 172
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f090338

    .line 173
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900bb

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$2;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$2;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090264

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$3;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$3;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 197
    invoke-virtual {v4, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v4
.end method

.method public createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;
    .locals 12

    .line 400
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v11

    .line 401
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    const v1, 0x7f110021

    .line 404
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    .line 409
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v4, ""

    if-ne v0, v2, :cond_0

    .line 410
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 411
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 413
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v5

    .line 412
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 415
    :cond_0
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_1

    .line 416
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 417
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 418
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 419
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v5

    .line 418
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_2

    .line 422
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 423
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 424
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 425
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v5

    .line 424
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_2
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_3

    .line 428
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 429
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 430
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 431
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v5

    .line 430
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object v5, v4

    .line 435
    :goto_1
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$6;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;Landroid/content/Context;)V

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1101fc

    .line 453
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 455
    invoke-static {p1, v2, p2}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    const v2, 0x7f0801ba

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    .line 451
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 457
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 388
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;
    .locals 4

    .line 1268
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1269
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c010f

    const/4 v3, 0x0

    .line 1270
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090350

    .line 1272
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v3, 0x60000

    .line 1273
    invoke-virtual {v2, v3}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1274
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1278
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1279
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const p1, 0x7f090357

    .line 1281
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1282
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900bb

    .line 1284
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1285
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$30;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$30;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090264

    .line 1293
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1294
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$31;

    invoke-direct {p2, p0, v2, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$31;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/TimeDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1309
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 615
    invoke-virtual {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 5

    .line 620
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getImageResId()I

    move-result v0

    .line 621
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getText()Ljava/lang/String;

    move-result-object p2

    .line 624
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f120105

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 625
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0c006c

    const/4 v4, 0x0

    .line 626
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v4, 0x7f09035a

    .line 629
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 630
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090198

    .line 635
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 636
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f090338

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 641
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090264

    .line 643
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p3, :cond_2

    .line 645
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$12;

    invoke-direct {p3, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils$12;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 657
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method public fireDoNotDisturbAlertDialog(Landroid/content/Context;Z)V
    .locals 8

    .line 851
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDndIcon()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const v3, 0x7f1100de

    const v4, 0x7f1100dd

    const v5, 0x7f1101fc

    const v6, 0x7f1102a6

    .line 853
    const-class v7, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/bluetoothle/DialogUtils;->createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 7

    .line 784
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileHasPendingPopup()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileHasPendingPopup(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 789
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const v2, 0x7f1102d7

    const v3, 0x7f1102d6

    const v4, 0x7f1101fc

    const v5, 0x7f1102d5

    .line 790
    const-class v6, Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public fireUpdateAppPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const v2, 0x7f11002c

    const v3, 0x7f11002b

    const v4, 0x7f1101e4

    const v5, 0x7f11032f

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 712
    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void
.end method

.method public getDecimalsBetween(III)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1362
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGlucoseLevels(FFF)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1324
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    float-to-double v0, p1

    float-to-double p1, p2

    :goto_0
    cmpg-double v2, v0, p1

    const/4 v3, 0x0

    const-string v4, "%.1f"

    const/4 v5, 0x1

    if-gez v2, :cond_0

    .line 1330
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getGlucoseLevels"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    new-instance v3, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1336
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1337
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    new-instance v0, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p3
.end method

.method public getGlucoseLevels(III)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1320
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseValueMg(Ljava/lang/String;)I
    .locals 1

    .line 1368
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->isFloat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMmolToMg(F)I

    move-result p1

    return p1

    .line 1371
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNumbersBetween(III)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1348
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1355
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isFloat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 1375
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeDialogs()V
    .locals 8

    .line 220
    const-class v0, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing dialogs, staring size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 223
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 224
    invoke-virtual {v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "dismiss showing dialog "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " preserving dialog, is showing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "preserve pending dialaog, it\'s null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public removeOtherDialogs()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 11

    .line 101
    const-class v0, Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DIALOGS SIZE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 103
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 105
    invoke-virtual {v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "try to dismiss existing dialog ---- "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Close dialog ---- "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_1
    sget-object v4, Lcom/senseonics/bluetoothle/DialogUtils$36;->$SwitchMap$com$senseonics$util$dialogs$CustomDialogInfo$DIALOG_TYPE:[I

    invoke-virtual {v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialogType()Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v3, :cond_3

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    const/4 v3, 0x4

    if-eq v4, v3, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p0, p1, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 121
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-virtual {p0, p1, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 118
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 115
    :cond_4
    move-object v3, v2

    check-cast v3, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-virtual {p0, p1, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    .line 129
    :goto_2
    invoke-virtual {v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show dialog --- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 134
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide/show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 136
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_7

    const v6, 0x7f110024

    const v7, 0x7f1101af

    const v8, 0x7f110322

    const v9, 0x7f1100d9

    .line 141
    const-class v10, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/DialogUtils;->createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_7
    return-void
.end method
