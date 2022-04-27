.class Ldaggero/internal/FailoverLoader$1;
.super Ldaggero/internal/Memoizer;
.source "FailoverLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/FailoverLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Memoizer<",
        "Ljava/lang/Class<",
        "*>;",
        "Ldaggero/internal/ModuleAdapter<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldaggero/internal/FailoverLoader;


# direct methods
.method constructor <init>(Ldaggero/internal/FailoverLoader;)V
    .locals 0

    .line 40
    iput-object p1, p0, Ldaggero/internal/FailoverLoader$1;->this$0:Ldaggero/internal/FailoverLoader;

    invoke-direct {p0}, Ldaggero/internal/Memoizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Class;)Ldaggero/internal/ModuleAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldaggero/internal/ModuleAdapter<",
            "*>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Ldaggero/internal/FailoverLoader$1;->this$0:Ldaggero/internal/FailoverLoader;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$$ModuleAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldaggero/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaggero/internal/ModuleAdapter;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module adapter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be loaded. Please ensure that code generation was run for this module."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ldaggero/internal/FailoverLoader$1;->create(Ljava/lang/Class;)Ldaggero/internal/ModuleAdapter;

    move-result-object p1

    return-object p1
.end method
