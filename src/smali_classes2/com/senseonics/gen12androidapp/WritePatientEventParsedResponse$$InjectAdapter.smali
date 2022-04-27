.class public final Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "WritePatientEventParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private databaseManager:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
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

    .line 31
    const-class v0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    const-string v1, "com.senseonics.gen12androidapp.WritePatientEventParsedResponse"

    const-string v2, "members/com.senseonics.gen12androidapp.WritePatientEventParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.SyncModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;
    .locals 4

    .line 63
    new-instance v0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/db/DatabaseManager;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/SyncModel;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;-><init>(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

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
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->databaseManager:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->syncModel:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
