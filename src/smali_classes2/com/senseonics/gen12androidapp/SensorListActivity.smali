.class public Lcom/senseonics/gen12androidapp/SensorListActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    }
.end annotation


# static fields
.field private static final MLResponseMessageArgument_ATCCAL:I = 0x3

.field private static final MLResponseMessageArgument_CRC:I = 0x0

.field private static final MLResponseMessageArgument_EEPROM:I = 0x2

.field private static final kBaseFileExtension:Ljava/lang/String; = ".csv"

.field private static final kNumberEEPROMBlocks:I = 0x1a


# instance fields
.field private addressAndValuesACT:[I

.field private addressAndValuesEEPROM:[I

.field private avPlaceSensor:Landroid/app/Dialog;

.field private avPlaceSensorCounter:I

.field private checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

.field private checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

.field private checkTxTimeCounter:I

.field private dialog:Landroid/app/Dialog;

.field private fileVersionString:Ljava/lang/String;

.field private imageView1:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private imageView3:Landroid/widget/ImageView;

.field private isRelink:Z

.field private linkCheckCounter:I

.field private linkCheckHander:Landroid/os/Handler;

.field private linkCheckRunnable:Ljava/lang/Runnable;

.field private linkDetectedSensorButton:Landroid/widget/Button;

.field private linkDetectedSensorLayout:Landroid/widget/LinearLayout;

.field private linkDetectedSensorTextView:Landroid/widget/TextView;

.field private linkedSensorLayout:Landroid/widget/LinearLayout;

.field private linkedSensorLeftTextView:Landroid/widget/TextView;

.field private linkedSensorSerialNumberArrived:Z

.field private linkedSensorTextView:Landroid/widget/TextView;

.field private linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field private linkingInProgress:Z

.field private linkingLayout:Landroid/widget/LinearLayout;

.field private linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field private oldSensorInsertionDate:Ljava/util/Calendar;

.field private progressBar1:Landroid/widget/ProgressBar;

.field private progressBar2:Landroid/widget/ProgressBar;

.field private progressBar3:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private relinkLayout:Landroid/widget/LinearLayout;

.field protected sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private unlinkedSensorLayout:Landroid/widget/LinearLayout;

.field private unlinkedSensorLeftTextView:Landroid/widget/TextView;

.field private unlinkedSensorSerialNumberArrived:Z

.field private unlinkedSensorTextView:Landroid/widget/TextView;

.field private waitForInsertionDateBeforeLinkCheck:Z

.field protected writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 116
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 461
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$4;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$4;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    .line 581
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$5;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$5;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->isRelink:Z

    return p1
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinking()V

    return-void
.end method

.method static synthetic access$1000(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/app/Dialog;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/SensorListActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    return p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheck()V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/gen12androidapp/SensorListActivity;IZ)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(IZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object p1
.end method

.method static synthetic access$900(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private allowRelink()Z
    .locals 2

    .line 1337
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->alreadyLinked()Z

    move-result v0

    .line 1338
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->relinkSensor()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private alreadyLinked()Z
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1377
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120105

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    .line 1379
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    .line 1380
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090357

    .line 1382
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 1383
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090338

    .line 1386
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1387
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900bb

    .line 1389
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1390
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    new-instance p2, Lcom/senseonics/gen12androidapp/SensorListActivity$11;

    invoke-direct {p2, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$11;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090264

    .line 1399
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1400
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1403
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1404
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private dataSentToTransmitter()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v0, "Linking"

    const-string v1, "Step 3: link the new sensor"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteSensorID(J)V

    .line 349
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private finishLinking(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-eqz p1, :cond_0

    .line 615
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->COMPLETE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    :goto_0
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 616
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 617
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 618
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    return-void
.end method

.method private generatePassword()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x61

    .line 698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/16 v1, 0x24

    .line 699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 698
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    .line 701
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v0

    const-string v1, ".csv"

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "00Sensor"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 692
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get sensor file name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Algo format version"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getTxHHDTimeDiff()J
    .locals 6

    .line 420
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterTime()J

    move-result-wide v0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre Sensor linking : tx time -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#4021"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time diff: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isAllDataLoaded()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkCheck()V
    .locals 8

    .line 508
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    const/4 v1, 0x1

    .line 525
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    add-int/2addr v0, v1

    .line 508
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 510
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkCheckCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avPlaceSensorCounter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_2

    const v0, 0x7f11008f

    .line 518
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V

    :cond_2
    const-string v0, "1. Get state copy"

    .line 522
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 526
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 528
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v4

    .line 529
    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 534
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 539
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Check Insertion Date: old->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " new->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> isSet? "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ")"

    if-eqz v3, :cond_5

    .line 542
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v3

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3. Read Current Phase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v5, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v3, v5, :cond_5

    .line 546
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 550
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "4. needForceRead? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 553
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postForceGlucoseMeasurement()V

    .line 554
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 555
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    .line 556
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 557
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 558
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 560
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 561
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 564
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5. Link Finished! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 567
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 569
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    .line 574
    :cond_7
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 577
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->step3Finished()V

    :cond_8
    :goto_2
    return-void
.end method

.method private removeCheckAndSyncTransmitterDateTimeCallBack()V
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1281
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private removeLinkCheckCallBack()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "Linking"

    const-string v1, "----- removeLinkCheckCallBack -----"

    .line 1272
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1274
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private resetCheckTxTimeCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method private sramResultCheckCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SramResultCheckCompletionActivityReceivedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SramResultCheckCompletionActivityReceivedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinkCheck()V

    goto :goto_0

    .line 378
    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 379
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :goto_0
    return-void
.end method

.method private startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, " "

    const-string v1, "-1"

    const-string v2, "UTF-8"

    .line 843
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 844
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 845
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 848
    sget-object v5, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%u%p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%u"

    .line 852
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%p"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "finalString"

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 858
    invoke-static {v5}, Lcom/senseonics/util/Utils;->GetCRCValue([B)I

    move-result v5

    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CalibrationFileInfoEx>\n<!--Optional:-->\n<tem:ATCCALFetchFlag>1</tem:ATCCALFetchFlag>\n<!--Optional:-->\n<tem:CRC>%crc</tem:CRC>\n<!--Optional:-->\n<tem:EEPROMFetchFlag>1</tem:EEPROMFetchFlag>\n<!--Optional:-->\n<tem:FileName>%id</tem:FileName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n</tem:CalibrationFileInfoEx>\n</soapenv:Body>\n</soapenv:Envelope>\n"

    const-string v7, "%crc"

    .line 881
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%id"

    .line 882
    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "%password"

    .line 883
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%username"

    .line 884
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "request string"

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v3, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 890
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v4, "text/xml; charset=utf-8"

    .line 891
    invoke-virtual {v0, p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 892
    sget-object v4, Lcom/senseonics/util/Utils;->webserviceFunction:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 897
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v3, 0xea60

    .line 899
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 900
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 901
    invoke-static {p1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 903
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 906
    :try_start_1
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 907
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 909
    :try_start_2
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 910
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 913
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, v0, :cond_0

    .line 914
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$7;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$7;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v1

    :catch_1
    move-exception p1

    const-string v0, "exception"

    const-string v2, "----"

    .line 924
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private startLinkCheck()V
    .locals 5

    .line 491
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->isRelink:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRelink:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Linking"

    const-string v2, "--- Link Check START ---"

    .line 496
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iput v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 499
    iput v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    .line 503
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 504
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    return-void
.end method

.method private startLinking()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    invoke-static {p0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    .line 394
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTransmitterDateTimePre()V

    goto :goto_0

    .line 396
    :cond_0
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 397
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLinkDetectedSensorLayout(IZ)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isTransmitterEOL396Active()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const p2, 0x7f11017b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const v3, 0x7f11017a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz p2, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->allowRelink()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 263
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTransmitterTime()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 408
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    return-void
.end method

.method private writeCalDataCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/WriteCalDataCompletionActivityReceivedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/WriteCalDataCompletionActivityReceivedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->dataSentToTransmitter()V

    goto :goto_0

    .line 294
    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 295
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndSyncTransmitterDateTime()V
    .locals 6

    .line 434
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 436
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getTxHHDTimeDiff()J

    move-result-wide v0

    .line 438
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 439
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 443
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 444
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    .line 450
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 451
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/2addr v3, v1

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 455
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 457
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkMMAandTXcompatibility()Ljava/lang/String;
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "-1"

    .line 709
    const-class v2, Lcom/senseonics/gen12androidapp/SensorListActivity;

    const-string v3, ""

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 710
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-virtual {p0, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    :try_start_0
    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CompatibilityFileInputInfo>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:AppOS>1</tem:AppOS>\n<!--Optional:-->\n<tem:AppVersion>%appversion</tem:AppVersion>\n<!--Optional:-->\n<tem:FWVersion>%fwversion</tem:FWVersion>\n</tem:CompatibilityFileInputInfo>\n</soapenv:Body>\n</soapenv:Envelope>\n"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 737
    :try_start_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 738
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-object v5, v3

    .line 742
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v8

    :goto_1
    const-string v8, "%username"

    .line 748
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%password"

    .line 749
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "%appversion"

    .line 750
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%fwversion"

    .line 751
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMMAandTXcompatibility:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 757
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v6, "text/xml; charset=utf-8"

    .line 758
    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SOAPAction"

    .line 759
    sget-object v6, Lcom/senseonics/util/Utils;->kAppFWCompatibilityCheckWebserviceFunctionCall:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 762
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v5, 0xea60

    .line 764
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 765
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 766
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 768
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 771
    :try_start_3
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 772
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    .line 774
    :try_start_4
    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 778
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq v0, v3, :cond_1

    .line 779
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$6;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$6;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    return-object v1

    :catch_2
    move-exception v0

    .line 790
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkTransmitterDateTimePre()V
    .locals 4

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 413
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 416
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "GMT"

    .line 643
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "MMddyyyy"

    .line 644
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "HmacSHA256"

    .line 651
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 653
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 655
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p2, "ASCII"

    .line 657
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 659
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 660
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 661
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    .line 663
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 665
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    .line 675
    :goto_1
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5

    .line 673
    :goto_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 671
    :goto_3
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5

    .line 669
    :goto_4
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public displayLinkingFailure()V
    .locals 5

    .line 1199
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->$SwitchMap$com$senseonics$gen12androidapp$SensorListActivity$MLSensorLinkingError:[I

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f11026d

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f11030d

    .line 1251
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110310

    .line 1252
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    move-object v0, v2

    goto/16 :goto_2

    :pswitch_1
    const v0, 0x7f11026e

    .line 1245
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1236
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCalFileNotFoundAlerts()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110158

    .line 1237
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110156

    .line 1238
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    const v0, 0x7f110157

    .line 1240
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110155

    .line 1241
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1227
    :pswitch_3
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalCrcCheck()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalSramResultCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f1102f9

    .line 1231
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1102fa

    .line 1232
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    const v0, 0x7f11026f

    .line 1228
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1229
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    const v0, 0x7f11025f

    .line 1219
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1220
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorLinkFileErrorText()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110261

    .line 1221
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f110260

    .line 1223
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const v0, 0x7f1102a0

    .line 1215
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1102a1

    .line 1216
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    const v0, 0x7f11032b

    .line 1211
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f110166

    goto :goto_1

    :cond_4
    const v0, 0x7f11032c

    :goto_1
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    const v0, 0x7f110159

    .line 1201
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1202
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const-string v1, "%%"

    const v3, 0x7f11015a

    if-eqz v0, :cond_5

    .line 1203
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 1204
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1206
    :cond_5
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1101f2

    .line 1207
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    :goto_2
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq v1, v3, :cond_7

    .line 1257
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1258
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1259
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1261
    :cond_6
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v3, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    .line 1262
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    const/4 v0, 0x0

    .line 1266
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 1267
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V
    .locals 5

    .line 1286
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    const-string v1, "Linking"

    if-nez v0, :cond_0

    const-string v0, "Create avPlaceSensor"

    .line 1288
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    .line 1292
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "avPlaceSensor isShowing?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "avPlaceSensor need to show!!"

    .line 1294
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public findCalibrationFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 839
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvPlaceSensor()Landroid/app/Dialog;
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-object v0
.end method

.method public getCheckTxTimeCounter()I
    .locals 1

    .line 1428
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return v0
.end method

.method public getOldSensorInsertionDate()Ljava/util/Calendar;
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public isLinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1420
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return v0
.end method

.method public isTransmitterEOL396Active()Z
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUnlinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1444
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return v0
.end method

.method public loadData()V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 624
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 625
    iput-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 626
    iput-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 627
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 631
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorIdRequest()V

    .line 632
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    const/16 v0, 0x8

    .line 637
    invoke-direct {p0, v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(IZ)V

    .line 638
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0035

    .line 133
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->initializeLayout(I)Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11017d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0901cc

    .line 137
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090388

    .line 138
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    .line 139
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0902aa

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    .line 140
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLeftTextView:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    const v2, 0x7f1100d1

    .line 142
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f0901ca

    .line 144
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090298

    .line 145
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0901cb

    .line 146
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f0901c9

    .line 147
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    const p1, 0x7f0901ce

    .line 148
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090289

    .line 149
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const p1, 0x7f09028a

    .line 150
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const p1, 0x7f09028b

    .line 151
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const p1, 0x7f090199

    .line 152
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const p1, 0x7f09019a

    .line 153
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const p1, 0x7f09019b

    .line 154
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const/16 p1, 0x8

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(IZ)V

    .line 157
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance p1, Landroid/app/ProgressDialog;

    const v1, 0x7f120229

    invoke-direct {p1, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0800a2

    .line 172
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1302
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 1303
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 206
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/LinkSensorIdCompletedEvent;)V
    .locals 1

    .line 357
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    if-eq p1, v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalSramResultCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isAtccalSramResultRegisterExists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->check()V

    goto :goto_0

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinkCheck()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 279
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;)V
    .locals 3

    .line 470
    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 471
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    .line 474
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 475
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    goto :goto_0

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    .line 479
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0.1 Save old insertion date: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Linking"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 482
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 483
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;)V
    .locals 6

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 211
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    if-ne v0, v1, :cond_5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkedSensorSerialNumberArrived:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v3, :cond_4

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_0

    .line 224
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 236
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowTextAndButton:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-direct {p0, v5, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(IZ)V

    goto :goto_2

    .line 240
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(IZ)V

    .line 244
    :goto_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    :cond_5
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_6

    .line 248
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_6
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SramResultCheckCompletedEvent;)V
    .locals 0

    .line 369
    invoke-virtual {p1}, Lcom/senseonics/events/SramResultCheckCompletedEvent;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultCheckCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/WriteCalDataCompletedEvent;)V
    .locals 0

    .line 285
    invoke-virtual {p1}, Lcom/senseonics/events/WriteCalDataCompletedEvent;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 178
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 186
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->isSuccessful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultCheckCompleted(Ljava/lang/Boolean;)V

    .line 190
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 7

    .line 1086
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1088
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    const/4 p1, 0x0

    .line 1092
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const/16 v2, 0x10

    .line 1093
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Version"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v2

    const/4 v3, 0x1

    .line 1099
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    const-string v6, "Algo format version"

    if-lt v4, v5, :cond_2

    if-lt v2, v5, :cond_1

    .line 1104
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_0

    const-string p1, "Compatibility check passes 0"

    .line 1105
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "Compatibility check failed 0"

    .line 1107
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p2, "Compatibility check failed 1"

    .line 1111
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 1114
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p2, v1, :cond_4

    if-nez v2, :cond_3

    const-string p1, "Compatibility check passes 2"

    .line 1116
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "Compatibility check failed 2"

    .line 1118
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string p2, "Compatibility check failed 3"

    .line 1122
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1126
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1127
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    .line 1128
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    .line 1129
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_1

    .line 1132
    :cond_5
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1135
    :cond_6
    :goto_1
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-ne v0, p1, :cond_9

    .line 1136
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    if-eqz p1, :cond_8

    .line 1138
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$8;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$8;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1148
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p2

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    invoke-virtual {p1, p2, v1, v2}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->writeData(Lcom/senseonics/bluetoothle/BluetoothService;[I[I)V

    goto :goto_2

    .line 1151
    :cond_7
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_2

    .line 1154
    :cond_8
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    :cond_9
    :goto_2
    return-object v0
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 10

    .line 997
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1002
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1003
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1004
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1005
    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1007
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-eq p1, v1, :cond_6

    .line 1010
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, " PARSE -- NAME --"

    .line 1012
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x4

    if-eq p1, v7, :cond_1

    goto :goto_2

    .line 1017
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v7, "text"

    .line 1019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, p1

    goto :goto_1

    :cond_3
    move-object v4, p1

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 1039
    :cond_5
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    .line 1044
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    .line 1042
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1047
    :cond_6
    :goto_5
    const-class p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expectedCRC:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|eepromString:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|atccalString:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 1050
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_2
    const-string v3, "UTF-8"

    .line 1053
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1054
    invoke-static {p1}, Lcom/senseonics/util/Utils;->GetCRCValue([B)I

    move-result p1

    .line 1056
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p1, v2, :cond_7

    .line 1057
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_6

    .line 1060
    :cond_7
    invoke-virtual {p0, v4, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity;->parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    .line 1063
    :catch_4
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_6

    .line 1066
    :cond_8
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1069
    :goto_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, v2, :cond_b

    .line 1070
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCalFileNotFoundAlerts()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-ne p1, v2, :cond_a

    .line 1071
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result p1

    const/16 v2, 0x8

    if-lt p1, v2, :cond_9

    .line 1074
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "600Sensor"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".csv"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1075
    new-instance v2, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 1077
    :cond_9
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_7

    .line 1080
    :cond_a
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_b
    :goto_7
    return-void
.end method

.method public prepareLinkingLayout()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAvPlaceSensor(Landroid/app/Dialog;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-void
.end method

.method public setCheckTxTimeCounter(I)V
    .locals 0

    .line 1432
    iput p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method public setLinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1424
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public setLinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method public setLinkingState(Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-void
.end method

.method public setUnlinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1448
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public setWaitForInsertionDateBeforeLinkCheck(Z)V
    .locals 0

    .line 1456
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    return-void
.end method

.method showRelinkAlert1()V
    .locals 7

    const v0, 0x7f110154

    .line 1343
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110249

    .line 1344
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f11007f

    .line 1345
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1101fc

    .line 1346
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1347
    new-instance v6, Lcom/senseonics/gen12androidapp/SensorListActivity$9;

    invoke-direct {v6, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$9;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    move-object v1, p0

    .line 1355
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method showRelinkAlert2()V
    .locals 7

    const v0, 0x7f110092

    .line 1359
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11024a

    .line 1360
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f11007f

    .line 1361
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110248

    .line 1362
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1363
    new-instance v6, Lcom/senseonics/gen12androidapp/SensorListActivity$10;

    invoke-direct {v6, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$10;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    move-object v1, p0

    .line 1373
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startDownloadingAndSyncingOfEEPROMAndATCCALParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 834
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 835
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public step3Finished()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 597
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrengthRawRegisterExists()Z

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/AccountConfigurations;->showPlacementGuideDetail(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSignalStrengthRequest(Z)V

    .line 600
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    const/4 v0, 0x1

    .line 602
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 608
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->initUpload()V

    .line 610
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->upload()V

    return-void
.end method

.method public updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    .line 1163
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 1165
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    const/4 v0, 0x0

    const/4 v1, 0x3

    move v2, v0

    .line 1167
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1169
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1171
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    and-int/lit16 v5, v3, 0xff

    .line 1172
    aput v5, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1174
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    .line 1175
    aput v3, v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    move p1, v0

    .line 1185
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x2

    .line 1186
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x10

    .line 1188
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1189
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    aput v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1194
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atccalString:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Linking"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateViews()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1101f2

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060021

    goto :goto_0

    :cond_0
    const v0, 0x7f060089

    .line 328
    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
