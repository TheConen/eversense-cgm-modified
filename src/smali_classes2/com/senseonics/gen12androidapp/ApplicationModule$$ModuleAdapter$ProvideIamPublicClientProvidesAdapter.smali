.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideIamPublicClientProvidesAdapter"
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

    const-string v0, "@javax.inject.Named(value=IamPublicClient)/retrofit2.Retrofit"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideIamPublicClient"

    .line 1422
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1423
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 1424
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 1434
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.rx.IoThreadScheduler"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    .line 1435
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=DMSIamPublicBaseUrl)/okhttp3.HttpUrl"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    .line 1436
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "okhttp3.logging.HttpLoggingInterceptor"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 4

    .line 1457
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideIamPublicClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;

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

    .line 1446
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->ioThreadScheduler:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1447
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->baseUrl:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1448
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideIamPublicClientProvidesAdapter;->loggingInterceptor:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
