.class public Lcom/senseonics/gen12androidapp/MyProductInfoActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MyProductInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 20
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0081

    .line 22
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->initializeLayout(I)Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110230

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const v2, 0x7f110231

    .line 29
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@companyurl"

    const-string v4, "<a href=\'http://global.eversensediabetes.com\'>global.eversensediabetes.com</a>"

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@udi"

    const-string v4, "00817491023094"

    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 38
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "@version"

    .line 39
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 43
    sget-object v2, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    sget-object v2, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->getCalendarForReleaseDateString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f1101f2

    .line 47
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "@releasedate"

    .line 49
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "@compatibilityurl"

    const-string v3, "<a href=\'https://global.eversensediabetes.com/compatibility/\'>https://<br/>global.eversensediabetes.com/<br/>compatibility/</a>"

    .line 52
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0900e1

    .line 54
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const-string v3, "text/html; charset=UTF-8"

    .line 55
    invoke-virtual {v2, p1, v3, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090373

    .line 58
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isFormattedTransmitterVersionXL()Z

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getPartNumber(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09019c

    .line 62
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0800eb

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method
