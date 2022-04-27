.class public final Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "BluetoothEnabler$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothEnabler;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-class v0, Lcom/senseonics/pairing/BluetoothEnabler;

    const-string v1, "com.senseonics.pairing.BluetoothEnabler"

    const-string v2, "members/com.senseonics.pairing.BluetoothEnabler"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 38
    const-class v0, Lcom/senseonics/pairing/BluetoothEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.app.Activity"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 39
    const-class v0, Lcom/senseonics/pairing/BluetoothEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->adapter:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothEnabler;
    .locals 3

    .line 58
    new-instance v0, Lcom/senseonics/pairing/BluetoothEnabler;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->adapter:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/pairing/BluetoothEnabler;-><init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothAdapter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothEnabler;

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

    .line 48
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothEnabler$$InjectAdapter;->adapter:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
