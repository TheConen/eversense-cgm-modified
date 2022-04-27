.class public Lcom/senseonics/bluetoothle/FwUpdateChecker;
.super Ljava/lang/Object;
.source "FwUpdateChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private final prefFwUpdateAvailable:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private repository:Lcom/senseonics/otw/OtwRepository;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/senseonics/otw/OtwRepository;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "fwUpdateAvailable"

    .line 19
    iput-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->prefFwUpdateAvailable:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/FwUpdateChecker;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->setFwUpdateAvailable(Z)V

    return-void
.end method

.method private check()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->repository:Lcom/senseonics/otw/OtwRepository;

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->getSuccessAction()Lrx/functions/Action1;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->getErrorAction()Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/otw/OtwRepository;->checkFwUpdate(Lrx/functions/Action1;Lrx/functions/Action1;)V

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

    .line 71
    new-instance v0, Lcom/senseonics/bluetoothle/FwUpdateChecker$2;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker$2;-><init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V

    return-object v0
.end method

.method private getSuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;-><init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V

    return-object v0
.end method

.method private setFwUpdateAvailable(Z)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fwUpdateAvailable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getFwUpdateAvailable()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fwUpdateAvailable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->check()V

    :cond_0
    return-void
.end method
