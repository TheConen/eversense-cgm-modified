.class public final Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "TempProfileManager$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TempProfileManager;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationForegroundState:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
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

.field private notificationUtility:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private preferenceObjectSaverRetriver:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/PreferenceObjectSaverRetriver;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModel:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 44
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    const-string v1, "com.senseonics.bluetoothle.TempProfileManager"

    const-string v2, "members/com.senseonics.bluetoothle.TempProfileManager"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 54
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.PreferenceObjectSaverRetriver"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->preferenceObjectSaverRetriver:Ldaggero/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    .line 57
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    .line 58
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.NotificationUtility"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->notificationUtility:Ldaggero/internal/Binding;

    .line 59
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ApplicationForegroundState"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->applicationForegroundState:Ldaggero/internal/Binding;

    .line 60
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    .line 61
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSStateModelSyncManagerSwitcher"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TempProfileManager;
    .locals 10

    .line 86
    new-instance v9, Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->preferenceObjectSaverRetriver:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->notificationUtility:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/util/NotificationUtility;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->applicationForegroundState:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/bluetoothle/TempProfileManager;-><init>(Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
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

    .line 70
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->preferenceObjectSaverRetriver:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->notificationUtility:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->applicationForegroundState:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager$$InjectAdapter;->dmsStateModelSyncManagerSwitcher:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
