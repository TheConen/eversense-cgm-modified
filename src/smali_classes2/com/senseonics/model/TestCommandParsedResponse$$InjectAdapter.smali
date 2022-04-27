.class public final Lcom/senseonics/model/TestCommandParsedResponse$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "TestCommandParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/model/TestCommandParsedResponse;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    const-class v0, Lcom/senseonics/model/TestCommandParsedResponse;

    const-string v1, "com.senseonics.model.TestCommandParsedResponse"

    const-string v2, "members/com.senseonics.model.TestCommandParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 35
    const-class v0, Lcom/senseonics/model/TestCommandParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/TestCommandParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/TestCommandParsedResponse;
    .locals 2

    .line 53
    new-instance v0, Lcom/senseonics/model/TestCommandParsedResponse;

    iget-object v1, p0, Lcom/senseonics/model/TestCommandParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1}, Lcom/senseonics/model/TestCommandParsedResponse;-><init>(Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/senseonics/model/TestCommandParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/TestCommandParsedResponse;

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

    .line 44
    iget-object p2, p0, Lcom/senseonics/model/TestCommandParsedResponse$$InjectAdapter;->eventBus:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
