.class public Lcom/senseonics/gen12androidapp/PrivacyActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/PrivacyActivity$DownloadFileFromURL;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private fileName:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/PrivacyActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/PrivacyActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->webview:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V
    .locals 4

    .line 55
    sget-object v0, Lcom/senseonics/gen12androidapp/PrivacyActivity$1;->$SwitchMap$com$senseonics$util$Utils$MLCheckResult:[I

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

    .line 74
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const p1, 0x7f11011b

    .line 69
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const p1, 0x7f1102a0

    .line 65
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const p1, 0x7f11032b

    .line 61
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110166

    goto :goto_0

    :cond_3
    const v0, 0x7f11032c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const p1, 0x7f110251

    .line 57
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->dialog:Landroid/app/Dialog;

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 24
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 26
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->initializeLayout(I)Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11022f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09039e

    .line 30
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->webview:Landroid/webkit/WebView;

    .line 31
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Privacy_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".html"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    .line 39
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    const-string v2, "Privacy"

    invoke-static {p1, v2, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Lcom/senseonics/gen12androidapp/PrivacyActivity$DownloadFileFromURL;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/PrivacyActivity$DownloadFileFromURL;-><init>(Lcom/senseonics/gen12androidapp/PrivacyActivity;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    aput-object v4, v2, v0

    const-string v0, "https://www.eversensedms.com/Privacy/"

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Lcom/senseonics/gen12androidapp/PrivacyActivity$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Lcom/senseonics/util/Utils$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PrivacyActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/PrivacyActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
