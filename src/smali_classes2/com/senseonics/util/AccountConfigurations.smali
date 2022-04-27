.class public Lcom/senseonics/util/AccountConfigurations;
.super Ljava/lang/Object;
.source "AccountConfigurations.java"


# static fields
.field private static final PartNumber_CE_XL_en:Ljava/lang/String; = "FG-5301-01-300"

.field private static final PartNumber_CE_da:Ljava/lang/String; = "FG-5300-08-200"

.field private static final PartNumber_CE_de:Ljava/lang/String; = "FG-5300-04-200"

.field private static final PartNumber_CE_en:Ljava/lang/String; = "FG-5300-01-300"

.field private static final PartNumber_CE_es:Ljava/lang/String; = "FG-5300-06-200"

.field private static final PartNumber_CE_fr:Ljava/lang/String; = "FG-5300-09-200"

.field private static final PartNumber_CE_it:Ljava/lang/String; = "FG-5300-05-200"

.field private static final PartNumber_CE_nb:Ljava/lang/String; = "FG-5300-03-200"

.field private static final PartNumber_CE_nl:Ljava/lang/String; = "FG-5300-07-200"

.field private static final PartNumber_CE_sv:Ljava/lang/String; = "FG-5300-02-200"

.field private static final PartNumber_US_en:Ljava/lang/String; = "FG-5502-01-300"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMyAccountPage()Z
    .locals 2

    .line 451
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static addTodayDate()Z
    .locals 2

    .line 324
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static calibratePageAddPhase()Z
    .locals 2

    .line 308
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static calibratePageCalInProgress()Z
    .locals 2

    .line 300
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static calibrationIconColorChange()Z
    .locals 2

    .line 435
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static calibrationReminders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static enableAtccalCrcCheck()Z
    .locals 2

    .line 483
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableAtccalSramResultCheck()Z
    .locals 2

    .line 475
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableDosing()Z
    .locals 2

    .line 523
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableExpandCollapseGlucoseSetting()Z
    .locals 2

    .line 555
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableExpandCollapseMyTransmitter()Z
    .locals 2

    .line 332
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableKeepAliveCheck()Z
    .locals 2

    .line 579
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableMoreGlucoseSetting()Z
    .locals 2

    .line 547
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableOneCalSwitch(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static enableRemoteMonitoring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static enableRichForegroundNotification()Z
    .locals 2

    .line 419
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableStaleGlucoseCheck()Z
    .locals 2

    .line 571
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static enableTimeRollbackCheck()Z
    .locals 2

    .line 459
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static fixTypoCalRejectMsgNotEnoughData()Z
    .locals 2

    .line 287
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getCalibrateLayout()I
    .locals 1

    const v0, 0x7f0c0078

    return v0
.end method

.method static getCriticalFaultFetchLimit()I
    .locals 1

    .line 72
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method static getCriticalFaultTypes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 45
    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v0, v5

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v5, v0, v4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v4, v0, v3

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v3, v0, v2

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v6, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 60
    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v6, v0, v5

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v5, v0, v4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v4, v0, v3

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v3, v0, v2

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDMS_Upload_Allow_Next_Operation_Seconds()I
    .locals 1

    .line 92
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    return v0
.end method

.method public static getDMS_Upload_Interval()I
    .locals 1

    .line 88
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public static getDocumentLanguageToDisplay(Z)Ljava/lang/String;
    .locals 6

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/senseonics/gen12androidapp/BuildConfig;->DOCUMENTS_LANGUAGES:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 100
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    sget-object v1, Lcom/senseonics/gen12androidapp/BuildConfig;->DOCUMENTS_LANGUAGES_EULA_DE:[Ljava/lang/String;

    const-string p0, "en_DE"

    goto :goto_0

    :cond_0
    const-string p0, "en"

    .line 105
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static getEventLogLayout()I
    .locals 1

    const v0, 0x7f0c0026

    return v0
.end method

.method public static getExerciseLayout()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public static getGlucoseLayout()I
    .locals 1

    const v0, 0x7f0c0064

    return v0
.end method

.method public static getGlucoseSettingLayout(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f0c0028

    return p0

    .line 170
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0c0027

    goto :goto_0

    :cond_1
    const p0, 0x7f0c0029

    :goto_0
    return p0
.end method

.method public static getHealthLayout()I
    .locals 1

    const v0, 0x7f0c0066

    return v0
.end method

.method public static getInsulinLayout()I
    .locals 1

    const v0, 0x7f0c0069

    return v0
.end method

.method public static getLoginActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 84
    const-class v0, Lcom/senseonics/authentication/UserLoginActivity;

    return-object v0
.end method

.method public static getMealLayout()I
    .locals 1

    const v0, 0x7f0c006b

    return v0
.end method

.method public static getPartNumber(Z)Ljava/lang/String;
    .locals 3

    .line 115
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FG-5502-01-300"

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "FG-5301-01-300"

    goto/16 :goto_1

    .line 125
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc7d

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc81

    if-eq v1, v2, :cond_8

    const/16 v2, 0xcae

    if-eq v1, v2, :cond_7

    const/16 v2, 0xccc

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd2b

    if-eq v1, v2, :cond_5

    const/16 v2, 0xdb4

    if-eq v1, v2, :cond_4

    const/16 v2, 0xdbe

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe63

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "sv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "nl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const-string v1, "nb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v1, "it"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    const-string v1, "de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    const-string v1, "da"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x3

    :cond_a
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "FG-5300-01-300"

    goto :goto_1

    :pswitch_0
    const-string p0, "FG-5300-07-200"

    goto :goto_1

    :pswitch_1
    const-string p0, "FG-5300-05-200"

    goto :goto_1

    :pswitch_2
    const-string p0, "FG-5300-09-200"

    goto :goto_1

    :pswitch_3
    const-string p0, "FG-5300-06-200"

    goto :goto_1

    :pswitch_4
    const-string p0, "FG-5300-08-200"

    goto :goto_1

    :pswitch_5
    const-string p0, "FG-5300-04-200"

    goto :goto_1

    :pswitch_6
    const-string p0, "FG-5300-02-200"

    goto :goto_1

    :pswitch_7
    const-string p0, "FG-5300-03-200"

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTempProfileLayout(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f0c0089

    goto :goto_0

    :cond_0
    const p0, 0x7f0c008a

    :goto_0
    return p0
.end method

.method public static hideDailyCal()Z
    .locals 2

    .line 515
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static isLoginActivity(Landroid/content/Context;)Z
    .locals 0

    .line 77
    instance-of p0, p0, Lcom/senseonics/authentication/UserLoginActivity;

    return p0
.end method

.method public static isUS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isUSXLorOUSXL2()Z
    .locals 4

    .line 265
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getMmaFeatures_Static()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0xff

    if-eq v0, v3, :cond_1

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static overrideDndCriticalAlertSettings()Z
    .locals 2

    .line 467
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static relinkSensor()Z
    .locals 2

    .line 427
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static removeAlertHelp()Z
    .locals 2

    .line 539
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static removeMealTime()Z
    .locals 2

    .line 619
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static removeStaleTrend()Z
    .locals 2

    .line 595
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static setSwitchStyle(Landroid/widget/Switch;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TAG_SWITCH_STYLE_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08019a

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbResource(I)V

    const v0, 0x7f08019f

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackResource(I)V

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setShowText(Z)V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setSwitchMinWidth(I)V

    const/16 v0, 0x2a

    .line 220
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbTextPadding(I)V

    .line 222
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showCalFileNotFoundAlerts()Z
    .locals 2

    .line 443
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static showCollectingData()Z
    .locals 2

    .line 611
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static showDisconnectDelaySetting()Z
    .locals 2

    .line 563
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static showDndIcon()Z
    .locals 2

    .line 531
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static showNoSensorDetectedPopup()Z
    .locals 2

    .line 603
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static showPlacementGuideDetail(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static supportRollingCal()Z
    .locals 1

    .line 229
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion_Static()F

    const/4 v0, 0x0

    return v0
.end method

.method public static supportXLNewCommands()Z
    .locals 4

    .line 248
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion_Static()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 250
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const v1, 0x40833333    # 4.1f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static suspiciousCalAlertsNewEc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static suspiciousFsIsCalibration()Z
    .locals 2

    .line 499
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static tempProfileNewUi()Z
    .locals 2

    .line 587
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateCalibrationGraceAlertText()Z
    .locals 2

    .line 345
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateCalibrationReadyTooSoonText()Z
    .locals 2

    .line 361
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateCalibrationSuspiciousAlertText()Z
    .locals 2

    .line 353
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateInternetDisconnectedAlertText()Z
    .locals 2

    .line 385
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateSensorLinkFileErrorText()Z
    .locals 2

    .line 377
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateSensorPrematurePopupText()Z
    .locals 2

    .line 369
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateSensorSignalIconColor()Z
    .locals 2

    .line 316
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static updateToHcp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static useNewBgmLogConversion()Z
    .locals 2

    .line 507
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static useNewCalAcceptRejectText()Z
    .locals 2

    .line 491
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method
