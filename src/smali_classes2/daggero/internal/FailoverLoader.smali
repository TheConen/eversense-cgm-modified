.class public final Ldaggero/internal/FailoverLoader;
.super Ldaggero/internal/Loader;
.source "FailoverLoader.java"


# instance fields
.field private final loadedAdapters:Ldaggero/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Memoizer<",
            "Ljava/lang/Class<",
            "*>;",
            "Ldaggero/internal/ModuleAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ldaggero/internal/Loader;-><init>()V

    .line 39
    new-instance v0, Ldaggero/internal/FailoverLoader$1;

    invoke-direct {v0, p0}, Ldaggero/internal/FailoverLoader$1;-><init>(Ldaggero/internal/FailoverLoader;)V

    iput-object v0, p0, Ldaggero/internal/FailoverLoader;->loadedAdapters:Ldaggero/internal/Memoizer;

    return-void
.end method


# virtual methods
.method public getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldaggero/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    const-string v0, "$$InjectAdapter"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Ldaggero/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaggero/internal/Binding;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0, p3, p2}, Ldaggero/internal/FailoverLoader;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 67
    const-class v0, Ljava/lang/Void;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_1
    invoke-static {p3, p4}, Ldaggero/internal/loaders/ReflectiveAtInjectBinding;->create(Ljava/lang/Class;Z)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1

    .line 68
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    aput-object p1, p4, p2

    const-string p1, "Could not load class %s needed for binding %s"

    .line 69
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getModuleAdapter(Ljava/lang/Class;)Ldaggero/internal/ModuleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ldaggero/internal/ModuleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Ldaggero/internal/FailoverLoader;->loadedAdapters:Ldaggero/internal/Memoizer;

    invoke-virtual {v0, p1}, Ldaggero/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldaggero/internal/ModuleAdapter;

    return-object p1
.end method

.method public getStaticInjection(Ljava/lang/Class;)Ldaggero/internal/StaticInjection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldaggero/internal/StaticInjection;"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$StaticInjection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 78
    invoke-virtual {p0, v0, v1}, Ldaggero/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaggero/internal/StaticInjection;

    if-eqz v0, :cond_0

    return-object v0

    .line 83
    :cond_0
    invoke-static {p1}, Ldaggero/internal/loaders/ReflectiveStaticInjection;->create(Ljava/lang/Class;)Ldaggero/internal/StaticInjection;

    move-result-object p1

    return-object p1
.end method
