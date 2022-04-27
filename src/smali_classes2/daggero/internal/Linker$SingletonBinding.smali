.class Ldaggero/internal/Linker$SingletonBinding;
.super Ldaggero/internal/Binding;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldaggero/internal/Binding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final binding:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile onlyInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ldaggero/internal/Binding;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldaggero/internal/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p1, Ldaggero/internal/Binding;->provideKey:Ljava/lang/String;

    iget-object v1, p1, Ldaggero/internal/Binding;->membersKey:Ljava/lang/String;

    iget-object v2, p1, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 350
    sget-object v0, Ldaggero/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    .line 354
    iput-object p1, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 1

    .line 358
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->attach(Ldaggero/internal/Linker;)V

    return-void
.end method

.method public dependedOn()Z
    .locals 1

    .line 398
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->dependedOn()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    sget-object v1, Ldaggero/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    sget-object v1, Ldaggero/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    .line 372
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 374
    :cond_1
    :goto_0
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

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

    .line 378
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1, p2}, Ldaggero/internal/Binding;->getDependencies(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public isCycleFree()Z
    .locals 1

    .line 382
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->isCycleFree()Z

    move-result v0

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .line 386
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->isLinked()Z

    move-result v0

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisiting()Z
    .locals 1

    .line 390
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->isVisiting()Z

    move-result v0

    return v0
.end method

.method public library()Z
    .locals 1

    .line 394
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->library()Z

    move-result v0

    return v0
.end method

.method public setCycleFree(Z)V
    .locals 1

    .line 402
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->setCycleFree(Z)V

    return-void
.end method

.method public setDependedOn(Z)V
    .locals 1

    .line 414
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->setDependedOn(Z)V

    return-void
.end method

.method public setLibrary(Z)V
    .locals 1

    .line 410
    iget-object p1, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldaggero/internal/Binding;->setLibrary(Z)V

    return-void
.end method

.method protected setLinked()V
    .locals 1

    .line 422
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->setLinked()V

    return-void
.end method

.method public setVisiting(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->setVisiting(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Singleton/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldaggero/internal/Linker$SingletonBinding;->binding:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
