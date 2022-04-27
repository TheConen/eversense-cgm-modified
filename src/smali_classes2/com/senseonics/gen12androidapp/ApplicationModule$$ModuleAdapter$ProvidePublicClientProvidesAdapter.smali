.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidePublicClientProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
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

    const-string v0, "@javax.inject.Named(value=PublicClient)/retrofit2.Retrofit"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "providePublicClient"

    .line 1363
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1364
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 1365
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 1375
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.rx.IoThreadScheduler"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    .line 1376
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=DMSBaseUrl)/okhttp3.HttpUrl"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    .line 1377
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "okhttp3.logging.HttpLoggingInterceptor"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1353
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 4

    .line 1398
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/ApplicationModule;->providePublicClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;

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

    .line 1387
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1389
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
