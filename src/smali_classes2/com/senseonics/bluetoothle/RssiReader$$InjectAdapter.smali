.class public final Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "RssiReader$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/bluetoothle/RssiReader;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothCommunicator:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
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

.field private timerProvider:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    const-class v0, Lcom/senseonics/bluetoothle/RssiReader;

    const-string v1, "com.senseonics.bluetoothle.RssiReader"

    const-string v2, "members/com.senseonics.bluetoothle.RssiReader"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/bluetoothle/RssiReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "javax.inject.Provider<java.util.Timer>"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->timerProvider:Ldaggero/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/bluetoothle/RssiReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/bluetoothle/RssiReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BluetoothCommunicator"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->bluetoothCommunicator:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/RssiReader;
    .locals 4

    .line 63
    new-instance v0, Lcom/senseonics/bluetoothle/RssiReader;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->timerProvider:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->bluetoothCommunicator:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/RssiReader;-><init>(Ljavax/inject/Provider;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/BluetoothCommunicator;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/RssiReader;

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
    iget-object p2, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->timerProvider:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p2, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/bluetoothle/RssiReader$$InjectAdapter;->bluetoothCommunicator:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
