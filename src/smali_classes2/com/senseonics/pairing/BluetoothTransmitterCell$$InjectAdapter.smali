.class public final Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "BluetoothTransmitterCell$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothTransmitterCell;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/os/Handler;",
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

    .line 31
    const-class v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    const-string v1, "com.senseonics.pairing.BluetoothTransmitterCell"

    const-string v2, "members/com.senseonics.pairing.BluetoothTransmitterCell"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.Handler"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->handler:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothTransmitterCell;
    .locals 4

    .line 63
    new-instance v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v3, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->handler:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/pairing/BluetoothTransmitterCell;-><init>(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothTransmitterCell;

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
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->transmitterStateModel:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$$InjectAdapter;->handler:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method