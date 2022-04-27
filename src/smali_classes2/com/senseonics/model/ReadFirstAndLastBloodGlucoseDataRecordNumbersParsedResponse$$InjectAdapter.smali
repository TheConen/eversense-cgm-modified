.class public final Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManager:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
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

.field private syncModel:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/SyncModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    const-class v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    const-string v1, "com.senseonics.model.ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse"

    const-string v2, "members/com.senseonics.model.ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 43
    const-class v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.SyncModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    .line 44
    const-class v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    .line 45
    const-class v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    .line 46
    const-class v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;
    .locals 5

    .line 67
    new-instance v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    iget-object v1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/SyncModel;

    iget-object v2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/db/DatabaseManager;

    iget-object v3, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v4, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-virtual {v4}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;-><init>(Lcom/senseonics/model/SyncModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

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

    .line 55
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
