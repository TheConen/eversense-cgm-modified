.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideAuthorizedClientProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private authenticationInterceptor:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/authentication/AuthenticationInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field

.field private ioThreadScheduler:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private loggingInterceptor:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "@javax.inject.Named(value=AuthorizedClient)/retrofit2.Retrofit"

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideAuthorizedClient"

    .line 1538
    invoke-direct {p0, v1, v0, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1539
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    .line 1540
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 1550
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.rx.IoThreadScheduler"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    .line 1551
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=DMSBaseUrl)/okhttp3.HttpUrl"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    .line 1552
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "okhttp3.logging.HttpLoggingInterceptor"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    .line 1553
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.authentication.AuthenticationInterceptor"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->authenticationInterceptor:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1526
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 5

    .line 1575
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/logging/HttpLoggingInterceptor;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->authenticationInterceptor:Ldaggero/internal/Binding;

    invoke-virtual {v4}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/authentication/AuthenticationInterceptor;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideAuthorizedClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;Lcom/senseonics/authentication/AuthenticationInterceptor;)Lretrofit2/Retrofit;

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

    .line 1563
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1564
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1565
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1566
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideAuthorizedClientProvidesAdapter;->authenticationInterceptor:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
