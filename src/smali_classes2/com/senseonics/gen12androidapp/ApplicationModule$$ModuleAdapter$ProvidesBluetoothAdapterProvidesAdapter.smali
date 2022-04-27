.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidesBluetoothAdapterProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidesBluetoothAdapterProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "com.senseonics.bluetoothle.BluetoothAdapterWrapper"

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "providesBluetoothAdapter"

    .line 1146
    invoke-direct {p0, v1, v0, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1147
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidesBluetoothAdapterProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    .line 1148
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidesBluetoothAdapterProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidesBluetoothAdapterProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->providesBluetoothAdapter()Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidesBluetoothAdapterProvidesAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    move-result-object v0

    return-object v0
.end method
