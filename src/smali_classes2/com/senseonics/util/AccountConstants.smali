.class public Lcom/senseonics/util/AccountConstants;
.super Ljava/lang/Object;
.source "AccountConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;,
        Lcom/senseonics/util/AccountConstants$MLDMSResult;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final FORCE_LOGOUT_BUNDLE_KEY:Ljava/lang/String;

.field public final TAG_CHECK_AND_UPDATE_PASSWORD_RESULT:Ljava/lang/String;

.field public final TAG_UPLOAD_SENSOR_INFO_RESULT:Ljava/lang/String;

.field private final Tag:Ljava/lang/String;

.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field public final checkAndUpdatePasswordWebserviceFunctionCall:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private final kGetUploadResultTagEnd:Ljava/lang/String;

.field private final kGetUploadResultTagStart:Ljava/lang/String;

.field private final kGetUserIDTagEnd:Ljava/lang/String;

.field private final kGetUserIDTagStart:Ljava/lang/String;

.field public final kUploadResultCount:I

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

.field public final uploadDeviceEventsWebserviceFunctionCall:Ljava/lang/String;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/senseonics/util/UserInfoSecureStorer;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    .line 65
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->uploadDeviceEventsWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    .line 66
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->checkAndUpdatePasswordWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "CheckAndUpdatePasswordResult"

    .line 69
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->TAG_CHECK_AND_UPDATE_PASSWORD_RESULT:Ljava/lang/String;

    const-string v0, "UploadSensorInfoResult"

    .line 70
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->TAG_UPLOAD_SENSOR_INFO_RESULT:Ljava/lang/String;

    const-string v0, "<GetUserIDByUserEmailResult>"

    .line 72
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUserIDTagStart:Ljava/lang/String;

    const-string v0, "</GetUserIDByUserEmailResult>"

    .line 73
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUserIDTagEnd:Ljava/lang/String;

    const-string v0, "<b:int>"

    .line 74
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUploadResultTagStart:Ljava/lang/String;

    const-string v0, "</b:int>"

    .line 75
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUploadResultTagEnd:Ljava/lang/String;

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/senseonics/util/AccountConstants;->kUploadResultCount:I

    const-string v0, "DMS(AccountConstants)"

    .line 77
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->Tag:Ljava/lang/String;

    const-string v0, "force_logout"

    .line 78
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->FORCE_LOGOUT_BUNDLE_KEY:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 150
    iput-object p3, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    .line 151
    iput-object p4, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 152
    iput-object p5, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 153
    iput-object p6, p0, Lcom/senseonics/util/AccountConstants;->alertHelper:Lcom/senseonics/util/AlertHelper;

    return-void
.end method

.method private IntArrayToHexString([I)Ljava/lang/String;
    .locals 5

    .line 1040
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 1041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntToHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private IntToHexString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit16 p1, p1, 0xff

    .line 1048
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%02x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkIfValidString(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkIfVersionChanged(Ljava/lang/String;)Z
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getSettingsForString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 395
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    .line 396
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    .line 399
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v4

    :goto_0
    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, ""

    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 411
    :goto_1
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v2
.end method

.method private generateSalt(I)[B
    .locals 1

    .line 1317
    new-array p1, p1, [B

    .line 1318
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1319
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method private getAllEvents(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 598
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 600
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/db/DatabaseManager;->getAllDMSEventPointsStartingFrom(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 614
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 615
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v2, v3, :cond_0

    .line 617
    :cond_1
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v3

    .line 618
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result v4

    .line 619
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v5

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 622
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_0

    .line 624
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "98"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 641
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 647
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 650
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 653
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 654
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    .line 656
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v3

    .line 658
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v7

    .line 659
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 667
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0000"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v3, v4, v1

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "000000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 687
    :cond_4
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 689
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getBase64ExerciseEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 842
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 843
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 846
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 847
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 848
    check-cast v3, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v6

    .line 850
    invoke-virtual {v6}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->getSubType()I

    move-result v6

    .line 851
    invoke-virtual {v3}, Lcom/senseonics/events/ExerciseEventPoint;->getDuration()I

    move-result v3

    add-int/lit8 v7, p2, 0x1

    .line 854
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v8

    .line 855
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 862
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v5, 0x4

    aput v5, p2, v1

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method private getBase64HealthEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 795
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 796
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 799
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 800
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 802
    check-cast v3, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v6

    .line 804
    invoke-virtual {v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v6

    .line 805
    invoke-virtual {v3}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v3

    .line 806
    invoke-virtual {v3}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->getSubType()I

    move-result v3

    add-int/lit8 v7, p2, 0x1

    .line 809
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v8

    .line 810
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/16 v5, 0x8

    aput v5, p2, v1

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method private getBase64InsulinEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 748
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 751
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 752
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 753
    check-cast v3, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v6

    .line 755
    invoke-virtual {v6}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v6

    .line 756
    invoke-virtual {v3}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v3

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/lit8 v7, p2, 0x1

    .line 759
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v8

    .line 760
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array v5, p2, [I

    aput p2, v5, v1

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method private getBase64MealEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 698
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 699
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 702
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 703
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 704
    check-cast v3, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v6

    .line 706
    invoke-virtual {v6}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v6

    .line 707
    invoke-virtual {v3}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v3

    add-int/lit8 v7, p2, 0x1

    .line 710
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v8

    .line 711
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v5, 0x2

    aput v5, p2, v1

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method private getBase64PatientEventData(I)Ljava/lang/String;
    .locals 11

    .line 887
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 888
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 889
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 890
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x28

    const/16 v3, 0x190

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/senseonics/db/DatabaseManager;->getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    move v6, v4

    .line 898
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 899
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/events/EventPoint;

    .line 900
    sget-object v8, Lcom/senseonics/util/AccountConstants$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v7}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 912
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 909
    :cond_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 906
    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 903
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 918
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "9E"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 923
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 924
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 925
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int v10, v6, v7

    add-int/2addr v10, v8

    add-int/2addr v10, v9

    .line 927
    invoke-static {v10}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v9

    .line 932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 936
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v5}, Lcom/senseonics/util/AccountConstants;->getBase64MealEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v6, v5

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v6}, Lcom/senseonics/util/AccountConstants;->getBase64InsulinEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v6, v7

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v6}, Lcom/senseonics/util/AccountConstants;->getBase64HealthEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v6, v8

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v6}, Lcom/senseonics/util/AccountConstants;->getBase64ExerciseEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 947
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 948
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 504
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 505
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 506
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getSensorLogsStartingFrom(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object p1

    .line 509
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "8C"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "010000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 517
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 520
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/graph/util/Glucose;

    .line 523
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v5

    .line 524
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v7

    .line 525
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v8

    .line 530
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 531
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 552
    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v6}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v6

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v6}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v6

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v6}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v6

    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v6}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v6

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 564
    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v6}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v4

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "000000"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 587
    :cond_0
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 589
    new-instance p2, Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method private getDateArrayFromGMTTimeStamp(J)[I
    .locals 2

    .line 473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 476
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, 0x1

    .line 478
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x5

    .line 480
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 482
    invoke-static {p2, v1, p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object p1

    return-object p1
.end method

.method private getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 956
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 957
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 958
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v3

    .line 959
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getCustomField2()I

    move-result v4

    .line 960
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v5

    .line 962
    invoke-static {v2, v3, v4, v5}, Lcom/senseonics/util/Utils;->getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 965
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v2

    .line 966
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 969
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "93"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 978
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 981
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move v1, p2

    .line 985
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 988
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/events/EventPoint;

    .line 991
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v3

    .line 992
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    .line 994
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v6

    .line 995
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v7

    .line 996
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getCustomField2()I

    move-result v8

    .line 997
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v2

    .line 998
    invoke-static {v6, v7, v8, v2}, Lcom/senseonics/util/Utils;->getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I

    move-result v2

    .line 1000
    invoke-direct {p0, v3, v4}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v6

    .line 1001
    invoke-direct {p0, v3, v4}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v3

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v2, v3, p2

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1028
    :cond_2
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 1030
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 1475
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1477
    iget-object v1, v0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    iget-object v2, v0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    .line 1479
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1485
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCriticalFaultFetchLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v15, v0, Lcom/senseonics/util/AccountConstants;->alertHelper:Lcom/senseonics/util/AlertHelper;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v5, p1

    .line 1477
    invoke-virtual/range {v1 .. v15}, Lcom/senseonics/db/DatabaseManager;->getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getTimeArrayFromGMTTimeStamp(J)[I
    .locals 2

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 491
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 p1, 0xb

    .line 493
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 p2, 0xc

    .line 494
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v1, 0xd

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 497
    invoke-static {p1, p2, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p1

    return-object p1
.end method

.method private setDefaultEnableAutoSync()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountEnableAutoSync"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public HasValidAccountInfo()Z
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUserIDFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public OpenCreateAccountURL(Landroid/content/Context;)V
    .locals 2

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://www.eversensedms.com/Account/Register"

    .line 454
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
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

.method public OpenForgotPasswordURL(Landroid/content/Context;)V
    .locals 2

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://www.eversensedms.com/Account/ForgotPassword"

    .line 464
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 466
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
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

.method public base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;
    .locals 3

    .line 1053
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1055
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1056
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1060
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    .line 1061
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .line 1290
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v1, 0xea60

    .line 1292
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1293
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "UTF-8"

    .line 1294
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1296
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1298
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1299
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1300
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const-string v4, "http"

    const/16 v5, 0x50

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1301
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, p1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1303
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1305
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public fetchSensorIDFromModel()Ljava/lang/String;
    .locals 2

    .line 1413
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "0"

    if-nez v0, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public fetchTxNameFromModel()Ljava/lang/String;
    .locals 2

    .line 1383
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public fetchTxSerialNoFromModel()Ljava/lang/String;
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    .line 1281
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v1, "application/soap+xml; charset=utf-8"

    .line 1282
    invoke-virtual {v0, p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 1283
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method public generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 v0, 0x10

    .line 1329
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->generateSalt(I)[B

    move-result-object v0

    .line 1331
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x3e8

    const/16 v3, 0x100

    invoke-direct {v1, p1, v0, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/4 v2, 0x0

    .line 1332
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([CC)V

    :try_start_0
    const-string p1, "PBKDF2WithHmacSHA1"

    .line 1335
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 1336
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 1339
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    array-length p1, v0

    const/4 v5, 0x1

    add-int/2addr p1, v5

    add-int/2addr p1, v3

    new-array p1, p1, [B

    .line 1342
    aput-byte v2, p1, v2

    .line 1343
    array-length v6, v0

    invoke-static {v0, v2, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {v4, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 1352
    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 1351
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    return-object p1
.end method

.method public generateCheckAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope \nxmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction</wsa:Action><wsa:To>%wsaTo</wsa:To></soap:Header><soap:Body>\n<tem:CheckAndUpdatePassword>\n<tem:Email>%userEmail</tem:Email>\n<tem:PasswordHash>%pwdHash</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary</tem:PasswordBinary>\n</tem:CheckAndUpdatePassword>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction"

    const-string v2, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    .line 1092
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%wsaTo"

    const-string v2, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 1093
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%userEmail"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1095
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%pwdHash"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1096
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "%pwdBinary"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-nez p7, :cond_0

    .line 1178
    invoke-direct {p0, p5, p6}, Lcom/senseonics/util/AccountConstants;->getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-direct {p0, p5}, Lcom/senseonics/util/AccountConstants;->getAllEvents(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1182
    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1185
    invoke-direct {p0, p5}, Lcom/senseonics/util/AccountConstants;->getBase64PatientEventData(I)Ljava/lang/String;

    move-result-object p5

    .line 1188
    invoke-direct {p0, v1, p6}, Lcom/senseonics/util/AccountConstants;->getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    const-string v0, "jAABAAAAAAA="

    const-string v2, "mAEAAAAA"

    const-string p5, "ngEAAAA="

    const-string p6, "kwEAAAAAAAAAAA=="

    :goto_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\">\n<wsa:Action>%wsaAction</wsa:Action>\n<wsa:To>%wsaTo</wsa:To>\n</soap:Header>\n<soap:Body>\n<tem:UploadDeviceEvents_CareApp>\n<tem:userID>%userID</tem:userID>\n<tem:PasswordHash>%pwdHash</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary</tem:PasswordBinary>\n<tem:deviceType>%devicetype</tem:deviceType>\n<tem:deviceName>%devicename</tem:deviceName>\n<tem:deviceID>%deviceID</tem:deviceID>\n<tem:data xmlns:b=\"http://schemas.microsoft.com/2003/10/Serialization/Arrays\" xmlns:i=\"http://www.w3.org/2001/XMLSchema-instance\">\n<b:base64Binary>%timezoneoffset</b:base64Binary>\n<b:base64Binary>%sensorglucose</b:base64Binary>\n<b:base64Binary>%manualglucose</b:base64Binary>\n<b:base64Binary>%patientevents</b:base64Binary>\n<b:base64Binary>%alertalarm</b:base64Binary>\n</tem:data>\n</tem:UploadDeviceEvents_CareApp>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v3, "%wsaAction"

    const-string v4, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    .line 1229
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%wsaTo"

    const-string v4, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 1230
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%userID"

    .line 1232
    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%pwdHash"

    .line 1233
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%pwdBinary"

    .line 1234
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%devicetype"

    const-string p3, "SMSIMeter"

    .line 1235
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%devicename"

    const-string p3, "Smart Transmitter (Android)"

    .line 1236
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%deviceID"

    if-nez p7, :cond_1

    .line 1239
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p3, ""

    .line 1241
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1244
    :goto_1
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;

    move-result-object p2

    const-string p3, "%timezoneoffset"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%sensorglucose"

    .line 1245
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%manualglucose"

    .line 1246
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%patientevents"

    .line 1247
    invoke-virtual {p1, p2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%alertalarm"

    .line 1248
    invoke-virtual {p1, p2, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccountAccessTokenFromPreference()Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountAccessToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountAccessTokenTimeFromPreference()Ljava/lang/Long;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAccountEnableAutoSync()Z
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    .line 288
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountEnableAutoSync"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountFirstNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountFirstName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountLastNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountLastName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPasswordFromPreference()Ljava/lang/String;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountProfileImageFromPreference()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountProfileImage"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountRealNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountFirstNameFromPreference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountLastNameFromPreference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountRefreshTokenFromPreference()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountRefreshToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUserIDFromPreference()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUsernameFromPreference()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase64_Sensor_BGM_Patient_Alert_Data(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/AccountConstants;->getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->getAllEvents(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1364
    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1367
    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->getBase64PatientEventData(I)Ljava/lang/String;

    move-result-object p1

    .line 1370
    invoke-direct {p0, v2, p2}, Lcom/senseonics/util/AccountConstants;->getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1372
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCoveredUserName()Ljava/lang/String;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "*****"

    if-le v0, v2, :cond_0

    .line 373
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-gt v0, v2, :cond_1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 376
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-gt v0, v4, :cond_2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 379
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getCoveredUsernameIfExists()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDiagnosticDataLastSyncedOnDateTimeFromPreference()J
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlucoseUnit()I
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    const-string v2, "currentGlucoseUnit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastCriticalFaults()Ljava/lang/String;
    .locals 12

    .line 1427
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCriticalFaultTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->getList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1430
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 1432
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/util/Notification;

    .line 1434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1435
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1437
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v6

    .line 1438
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1440
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v7

    .line 1441
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1443
    invoke-virtual {v6}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1444
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v10, ")"

    const-string v11, "("

    if-eq v6, v9, :cond_0

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v6, v9, :cond_1

    .line 1446
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1449
    :cond_1
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v6, v9, :cond_2

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v6, v9, :cond_3

    .line 1451
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1454
    :cond_3
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->suspiciousCalAlertsNewEc()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1455
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v6, v9, :cond_4

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v6, v9, :cond_4

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v6, v9, :cond_6

    .line 1458
    :cond_4
    invoke-static {v7}, Lcom/senseonics/util/Utils;->getCalPhaseFromCalAlertNote(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 1459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string v8, "-1"

    .line 1464
    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_7

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method

.method public getLastSyncedOnDateTimeFromPreference()J
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncedOnDateTimeStringFromPreference()Ljava/lang/String;
    .locals 4

    .line 271
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const v1, 0x7f1101f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 276
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/senseonics/util/TimeProvider;->formatDate(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSyncedStartDateTimeFromPreference()J
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedStartDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberListLastFetchedOnDateTimeFromPreference()J
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "MemberListLastFetchedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMigrationPasswordUpdated()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountMigrationPasswordUpdated"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSyncDaysFromPreference()I
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    sget v1, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    const-string v2, "AccountSyncDays"

    invoke-static {v0, v2, v1}, Lcom/senseonics/util/Utils;->getSettingsForDefault(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUploadResultFromResponse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const-string v2, "<b:int>"

    .line 1261
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "</b:int>"

    .line 1262
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x7

    .line 1265
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1267
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x8

    .line 1270
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getUserIDFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<GetUserIDByUserEmailResult>"

    .line 1107
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "</GetUserIDByUserEmailResult>"

    .line 1108
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1c

    .line 1111
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "N/A"

    :goto_0
    return-object p1
.end method

.method public initAccountPreferences()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountSyncDays"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    sget v2, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountLastSyncedOnDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountLastSyncedStartDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountSyncInterval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v2, "30 Mins"

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedInIfNotExist()V

    .line 335
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    return-void
.end method

.method public initAccountSecurePreference()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountRefreshToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountAccessToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public isAccountLoggedIn()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareRequestStringForUploadingData(I)Ljava/lang/String;
    .locals 8

    .line 1124
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUserIDFromPreference()Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object v0

    .line 1126
    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v0, ""

    .line 1129
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v4

    .line 1136
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    .line 1130
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/util/AccountConstants;->generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public prepareRequestStringForUploadingLoginData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1147
    invoke-virtual {p0, p1}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    invoke-virtual {p0, p1}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string p1, ""

    .line 1150
    invoke-virtual {v2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1157
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    .line 1151
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/util/AccountConstants;->generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public presetLoggedInAndEnableAutoSync()V
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedInIfNotExist()V

    .line 424
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    const-string v0, "VersionOfLastRun"

    .line 427
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfVersionChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSync()V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    :goto_0
    return-void
.end method

.method public resetDiagnosticDataLastSyncedOnInPreference()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountDiagnosticDataLastSyncedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetLastSyncedOnInPreference()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetLastSyncedStartInPreference()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedStartDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetMemberListLastFetchedOnInPreference()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "MemberListLastFetchedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V
    .locals 4

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToLastSyncedOnInPreference()V
    .locals 4

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToLastSyncedStartInPreference()V
    .locals 4

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedStartDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToMemberListLastFetchedOnInPreference()V
    .locals 4

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "MemberListLastFetchedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaultEnableAutoSyncIfNotExist()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountEnableAutoSync"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSync()V

    :cond_0
    return-void
.end method

.method public setDefaultLoggedIn()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultLoggedInIfNotExist()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountIsLoggedIn"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedIn()V

    :cond_0
    return-void
.end method

.method public setMigrationPasswordUpdated(Z)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountMigrationPasswordUpdated"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1311
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
