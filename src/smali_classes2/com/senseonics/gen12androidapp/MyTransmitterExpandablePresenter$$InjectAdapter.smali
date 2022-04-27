.class public final Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "MyTransmitterExpandablePresenter$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private client:Ldaggero/internal/Binding;
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

.field private sharedPreferences:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/SharedPreferences;",
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

    .line 41
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    const-string v1, "com.senseonics.gen12androidapp.MyTransmitterExpandablePresenter"

    const-string v2, "members/com.senseonics.gen12androidapp.MyTransmitterExpandablePresenter"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 7

    .line 51
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 52
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    .line 54
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->client:Ldaggero/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    .line 56
    const-class v3, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

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

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
    .locals 7

    .line 79
    new-instance v6, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->client:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/SharedPreferences;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;)V

    .line 80
    invoke-virtual {p0, v6}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

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

    .line 65
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->client:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    return-void
.end method
