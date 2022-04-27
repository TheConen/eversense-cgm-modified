.class public final Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "BatteryMonitorThresholdChecker$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private eventBus:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/getSetting/GetSettingRepository;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    const-class v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    const-string v1, "com.senseonics.bluetoothle.BatteryMonitorThresholdChecker"

    const-string v2, "members/com.senseonics.bluetoothle.BatteryMonitorThresholdChecker"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.getSetting.GetSettingRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;
    .locals 4

    .line 63
    new-instance v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/getSetting/GetSettingRepository;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;-><init>(Landroid/content/SharedPreferences;Lcom/senseonics/getSetting/GetSettingRepository;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

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

    .line 52
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
