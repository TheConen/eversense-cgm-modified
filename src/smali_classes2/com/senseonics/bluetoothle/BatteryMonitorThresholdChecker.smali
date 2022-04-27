.class public Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;
.super Ljava/lang/Object;
.source "BatteryMonitorThresholdChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final prefLastCheckTempThreshTime:Ljava/lang/String; = "lastCheckTempThreshTime"


# instance fields
.field private final BATT_CHECK_INTERVAL:J

.field private final BATT_THRESH_MAX:I

.field private final BATT_THRESH_MIN:I

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private final prefTempThreshModeChange:Ljava/lang/String;

.field private final prefTempThreshWarn:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private repository:Lcom/senseonics/getSetting/GetSettingRepository;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/senseonics/getSetting/GetSettingRepository;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "tempThreshWarn"

    .line 24
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->prefTempThreshWarn:Ljava/lang/String;

    const-string p1, "tempThreshModeChange"

    .line 25
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->prefTempThreshModeChange:Ljava/lang/String;

    .line 28
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->BATT_CHECK_INTERVAL:J

    const/16 p1, 0x28

    .line 29
    iput p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->BATT_THRESH_MIN:I

    const/16 p1, 0x5a

    .line 30
    iput p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->BATT_THRESH_MAX:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->isValid(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->setTempThreshWarn(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->setTempThreshModeChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->setLastCheckTempThreshTime(J)V

    return-void
.end method

.method private checkDms()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->repository:Lcom/senseonics/getSetting/GetSettingRepository;

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->getSuccessAction()Lrx/functions/Action1;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->getErrorAction()Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/getSetting/GetSettingRepository;->checkBatteryMonitorThreshold(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private checkIfIsTime()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->getLastCheckTempThreshTime()J

    move-result-wide v0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->BATT_CHECK_INTERVAL:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->checkDms()V

    :cond_0
    return-void
.end method

.method private getErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$2;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$2;-><init>(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;)V

    return-object v0
.end method

.method private getLastCheckTempThreshTime()J
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastCheckTempThreshTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;-><init>(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;)V

    return-object v0
.end method

.method private isValid(I)Z
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setLastCheckTempThreshTime(J)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastCheckTempThreshTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setTempThreshModeChange(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tempThreshModeChange"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setTempThreshWarn(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tempThreshWarn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getTempThreshModeChange()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "tempThreshModeChange"

    const/16 v2, 0x34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getTempThreshWarn()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "tempThreshWarn"

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/events/BackgroundToForegroundEvent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->checkIfIsTime()V

    return-void
.end method
