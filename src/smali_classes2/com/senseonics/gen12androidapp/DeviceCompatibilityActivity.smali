.class public Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "DeviceCompatibilityActivity.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 24
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 27
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->initializeLayout(I)Landroid/view/View;

    const/4 p1, 0x0

    const v0, 0x7f08009c

    .line 29
    invoke-virtual {p0, v0, p1, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09039e

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->webview:Landroid/webkit/WebView;

    .line 32
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v1, 0x64

    .line 34
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceWarning_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->fileName:Ljava/lang/String;

    const p1, 0x7f0900bb

    .line 43
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 44
    new-instance v1, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$1;-><init>(Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09001b

    .line 52
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    new-instance v2, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;-><init>(Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "eula_init"

    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "//"

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->fileName:Ljava/lang/String;

    const-string v0, "DeviceWarning"

    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
