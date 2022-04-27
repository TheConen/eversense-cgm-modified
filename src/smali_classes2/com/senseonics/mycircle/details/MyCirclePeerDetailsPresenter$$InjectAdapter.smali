.class public final Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "MyCirclePeerDetailsPresenter$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
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

.field private errorHandler:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/view/CommonErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private gcmRepository:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/gcm/GCMRepository;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/mycircle/model/MyCircleModel;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;",
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

    .line 45
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    const-string v1, "com.senseonics.mycircle.details.MyCirclePeerDetailsPresenter"

    const-string v2, "members/com.senseonics.mycircle.details.MyCirclePeerDetailsPresenter"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 7

    .line 55
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.details.MyCirclePeerDetailsRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gcm.GCMRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->gcmRepository:Ldaggero/internal/Binding;

    .line 57
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.view.CommonErrorHandler"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->errorHandler:Ldaggero/internal/Binding;

    .line 58
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.model.MyCircleModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    .line 59
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    .line 60
    const-class v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AccountConstants"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    .line 61
    const-class v3, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

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

    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;
    .locals 8

    .line 85
    new-instance v7, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->gcmRepository:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/gcm/GCMRepository;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->errorHandler:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/view/CommonErrorHandler;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/mycircle/model/MyCircleModel;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/util/AccountConstants;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;Lcom/senseonics/gcm/GCMRepository;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/model/MyCircleModel;Landroid/content/Context;Lcom/senseonics/util/AccountConstants;)V

    .line 86
    invoke-virtual {p0, v7}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->get()Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

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

    .line 70
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->repository:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->gcmRepository:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->errorHandler:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-void
.end method
