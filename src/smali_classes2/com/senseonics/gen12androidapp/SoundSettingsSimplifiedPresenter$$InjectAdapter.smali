.class public final Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "SoundSettingsSimplifiedPresenter$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private alarmRingtoneManager:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/AlarmRingtoneManager;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceCommandClient:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private dialogUtils:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
            ">;"
        }
    .end annotation
.end field

.field private dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private notificationDndManager:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/NotificationDndManager;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BasePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    const-string v1, "com.senseonics.gen12androidapp.SoundSettingsSimplifiedPresenter"

    const-string v2, "members/com.senseonics.gen12androidapp.SoundSettingsSimplifiedPresenter"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 7

    .line 60
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    .line 61
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    .line 62
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AlarmRingtoneManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->alarmRingtoneManager:Ldaggero/internal/Binding;

    .line 63
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    .line 64
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 65
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DialogUtils"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dialogUtils:Ldaggero/internal/Binding;

    .line 66
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSStateModelSyncManagerSwitcher"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    .line 67
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.NotificationDndManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->notificationDndManager:Ldaggero/internal/Binding;

    .line 68
    const-class v3, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
    .locals 10

    .line 94
    new-instance v9, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->alarmRingtoneManager:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dialogUtils:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->notificationDndManager:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/senseonics/util/NotificationDndManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/util/AlarmRingtoneManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/Context;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;Lcom/senseonics/util/NotificationDndManager;)V

    .line 95
    invoke-virtual {p0, v9}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldaggero/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldaggero/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->alarmRingtoneManager:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dialogUtils:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->notificationDndManager:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    return-void
.end method
