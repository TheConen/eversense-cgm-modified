.class public Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "MyTransmitterExpandablePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;",
        ">;"
    }
.end annotation


# static fields
.field static final SHOW_RSSI:Z = false


# instance fields
.field private final DEMO_EXECUTION_TIME:J

.field private final DEMO_TIMER_INTERVAL:J

.field private client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private demoTimer:Ljava/util/Timer;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private final prefLastExerciseVibrationTime:Ljava/lang/String;

.field private rssiTimer:Ljava/util/Timer;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_TIMER_INTERVAL:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_EXECUTION_TIME:J

    const-string v0, "lastExerciseVibrationTime"

    .line 32
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->prefLastExerciseVibrationTime:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    .line 54
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 55
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 56
    iput-object p5, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->shouldEnableDemo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;J)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setLastExerciseVibrationTime(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method private fetchTransmitterInfo()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshViews()V

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshRssi(I)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->showProgress()V

    .line 84
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->postRequests()V

    .line 85
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startRssiTimer()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->hideProgress()V

    :goto_0
    return-void
.end method

.method private getDemoOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 219
    new-instance v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    return-object v0
.end method

.method private getHeaderClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 234
    new-instance v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;I)V

    return-object v0
.end method

.method private getLastExerciseVibrationTime()J
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastExerciseVibrationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private postRequests()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPingRequest()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetModelRequest()V

    .line 96
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumberRequest()V

    .line 97
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateTimeRequest()V

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentCalibrationPhaseRequest()V

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postBatteryLifeRequest()V

    .line 101
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartDateTimeRequest()V

    return-void
.end method

.method private refreshRssi(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const v1, 0x7f1101f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    .line 197
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {p1, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->refreshRssi(Ljava/lang/String;)V

    return-void
.end method

.method private refreshViews()V
    .locals 15

    .line 171
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const v1, 0x7f1101f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    .line 174
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const v2, 0x7f060089

    if-eqz v3, :cond_0

    const v4, 0x7f060021

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 175
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    if-eqz v3, :cond_1

    const v2, 0x7f060107

    :cond_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 177
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    sget-object v2, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_2
    move-object v10, v0

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_2

    :cond_3
    move-object v11, v0

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_3

    :cond_4
    move-object v12, v0

    .line 185
    :goto_3
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_5
    move-object v13, v0

    .line 186
    :goto_4
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v1, v2, :cond_6

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v14, v0

    .line 188
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface/range {v2 .. v14}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->refreshViews(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportXLNewCommands()Z

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v2, 0x7f090239

    const v3, 0x7f0900ff

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/16 v0, 0x8

    :goto_5
    invoke-interface {v1, v2, v3, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setViewVisibilityByID(III)V

    return-void
.end method

.method private setLastExerciseVibrationTime(J)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastExerciseVibrationTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setupCalInfoLayout()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f0900b9

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    return-void
.end method

.method private setupDemoLayout()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f0900ff

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    .line 215
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getDemoOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupDemoOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupDeviceInfoLayout()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f09010a

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    return-void
.end method

.method private setupViews()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupDeviceInfoLayout()V

    .line 166
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupCalInfoLayout()V

    .line 167
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupDemoLayout()V

    return-void
.end method

.method private shouldEnableDemo()Z
    .locals 4

    .line 145
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getLastExerciseVibrationTime()J

    move-result-wide v0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_EXECUTION_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startDemoTimer()V
    .locals 6

    .line 127
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopDemoTimer()V

    .line 129
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    .line 130
    new-instance v1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    iget-wide v4, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_TIMER_INTERVAL:J

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startRssiTimer()V
    .locals 0

    return-void
.end method

.method private stopDemoTimer()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private stopRssiTimer()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->rssiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->rssiTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupViews()V

    .line 65
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fetchTransmitterInfo()V

    .line 66
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startDemoTimer()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 72
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopRssiTimer()V

    .line 75
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopDemoTimer()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fetchTransmitterInfo()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->getRSSIValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshRssi(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->hideProgress()V

    .line 157
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshViews()V

    return-void
.end method
