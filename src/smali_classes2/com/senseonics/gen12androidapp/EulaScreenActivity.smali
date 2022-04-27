.class public Lcom/senseonics/gen12androidapp/EulaScreenActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "EulaScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private fileName:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private EULAAccepted()V
    .locals 3

    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 121
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveAcceptedEULAVersion(Landroid/content/Context;)V

    .line 123
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    .line 124
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v1

    .line 125
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v2

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v0, 0x10008000

    if-eqz v2, :cond_2

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showEULAConfirmation()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->EULAAccepted()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method private showEULAConfirmation()V
    .locals 6

    .line 102
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    new-instance v4, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;

    invoke-direct {v4, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f110102

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    const v1, 0x7f11007f

    .line 114
    invoke-virtual {v0, v1}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    const v1, 0x7f11001e

    .line 115
    invoke-virtual {v0, v1}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V
    .locals 4

    .line 144
    sget-object v0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;->$SwitchMap$com$senseonics$util$Utils$MLCheckResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$MLCheckResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f11016b

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const p1, 0x7f11030d

    .line 163
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const p1, 0x7f11011b

    .line 158
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const p1, 0x7f1102a0

    .line 154
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const p1, 0x7f11032b

    .line 150
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110166

    goto :goto_0

    :cond_3
    const v0, 0x7f11032c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const p1, 0x7f110251

    .line 146
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 34
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->initializeLayout(I)Landroid/view/View;

    const/4 p1, 0x0

    const v0, 0x7f08009c

    .line 38
    invoke-virtual {p0, v0, p1, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09039e

    .line 40
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    .line 41
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EULA_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    const p1, 0x7f0900d7

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f0900bb

    .line 52
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 53
    new-instance v2, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09001b

    .line 61
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 62
    new-instance v2, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "eula_init"

    .line 75
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "//"

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "true"

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "EULA"

    if-eqz p1, :cond_0

    const p1, 0x7f0900a7

    .line 78
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-static {p1, v2, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-static {p1, v2, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    new-instance p1, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 91
    :cond_2
    sget-object p1, Lcom/senseonics/util/Utils$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V

    .line 96
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
