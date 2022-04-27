.class public final Ldaggero/internal/Linker;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldaggero/internal/Linker$DeferredBinding;,
        Ldaggero/internal/Linker$ErrorHandler;,
        Ldaggero/internal/Linker$SingletonBinding;
    }
.end annotation


# static fields
.field static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private attachSuccess:Z

.field private final base:Ldaggero/internal/Linker;

.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final errorHandler:Ldaggero/internal/Linker$ErrorHandler;

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile linkedBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final plugin:Ldaggero/internal/Loader;

.field private final toLink:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldaggero/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldaggero/internal/Linker;Ldaggero/internal/Loader;Ldaggero/internal/Linker$ErrorHandler;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ldaggero/internal/ArrayQueue;

    invoke-direct {v0}, Ldaggero/internal/ArrayQueue;-><init>()V

    iput-object v0, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Ldaggero/internal/Linker;->attachSuccess:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldaggero/internal/Linker;->errors:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 69
    iput-object p1, p0, Ldaggero/internal/Linker;->base:Ldaggero/internal/Linker;

    .line 70
    iput-object p2, p0, Ldaggero/internal/Linker;->plugin:Ldaggero/internal/Loader;

    .line 71
    iput-object p3, p0, Ldaggero/internal/Linker;->errorHandler:Ldaggero/internal/Linker$ErrorHandler;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "errorHandler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plugin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addError(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Ldaggero/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private assertLockHeld()V
    .locals 1

    .line 195
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldaggero/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Ldaggero/internal/Keys;->getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    new-instance p4, Ldaggero/internal/BuiltInBinding;

    invoke-direct {p4, p1, p2, p3, v0}, Ldaggero/internal/BuiltInBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object p4

    .line 215
    :cond_0
    invoke-static {p1}, Ldaggero/internal/Keys;->getLazyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    new-instance p4, Ldaggero/internal/LazyBinding;

    invoke-direct {p4, p1, p2, p3, v0}, Ldaggero/internal/LazyBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object p4

    .line 220
    :cond_1
    invoke-static {p1}, Ldaggero/internal/Keys;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 226
    invoke-static {p1}, Ldaggero/internal/Keys;->isAnnotated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Ldaggero/internal/Linker;->plugin:Ldaggero/internal/Loader;

    .line 231
    invoke-virtual {v0, p1, p2, p3, p4}, Ldaggero/internal/Loader;->getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldaggero/internal/Binding;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 235
    :cond_2
    new-instance p3, Ldaggero/internal/Binding$InvalidBindingException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not be bound with key "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ldaggero/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 227
    :cond_3
    new-instance p2, Ldaggero/internal/Binding$InvalidBindingException;

    const-string p3, "is a @Qualifier-annotated type and must be bound by a @Provides method."

    invoke-direct {p2, p1, p3}, Ldaggero/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 222
    :cond_4
    new-instance p2, Ldaggero/internal/Binding$InvalidBindingException;

    const-string p3, "is a generic class or an array and can only be bound with concrete type parameter(s) in a @Provides method."

    invoke-direct {p2, p1, p3}, Ldaggero/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method private putBinding(Ldaggero/internal/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldaggero/internal/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p1, Ldaggero/internal/Binding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    iget-object v1, p1, Ldaggero/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldaggero/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    :cond_0
    iget-object v0, p1, Ldaggero/internal/Binding;->membersKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    iget-object v1, p1, Ldaggero/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldaggero/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 334
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 336
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static scope(Ldaggero/internal/Binding;)Ldaggero/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldaggero/internal/Binding<",
            "TT;>;)",
            "Ldaggero/internal/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Ldaggero/internal/Binding;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Ldaggero/internal/Linker$SingletonBinding;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ldaggero/internal/Linker$SingletonBinding;

    invoke-direct {v0, p0}, Ldaggero/internal/Linker$SingletonBinding;-><init>(Ldaggero/internal/Binding;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public fullyLinkedBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0
.end method

.method public installBindings(Ldaggero/internal/BindingsGroup;)V
    .locals 3

    .line 83
    iget-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ldaggero/internal/BindingsGroup;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    iget-object v1, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaggero/internal/Binding;

    invoke-static {v0}, Ldaggero/internal/Linker;->scope(Ldaggero/internal/Binding;)Ldaggero/internal/Binding;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot install further bindings after calling linkAll()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public linkAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ldaggero/internal/Linker;->assertLockHeld()V

    .line 102
    iget-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldaggero/internal/Binding;

    .line 106
    invoke-virtual {v1}, Ldaggero/internal/Binding;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Ldaggero/internal/Linker;->linkRequested()V

    .line 111
    iget-object v0, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 112
    iget-object v0, p0, Ldaggero/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0
.end method

.method public linkRequested()V
    .locals 6

    const-string v0, " required by "

    .line 131
    invoke-direct {p0}, Ldaggero/internal/Linker;->assertLockHeld()V

    .line 133
    :goto_0
    iget-object v1, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldaggero/internal/Binding;

    if-eqz v1, :cond_5

    .line 134
    instance-of v2, v1, Ldaggero/internal/Linker$DeferredBinding;

    if-eqz v2, :cond_3

    .line 135
    move-object v2, v1

    check-cast v2, Ldaggero/internal/Linker$DeferredBinding;

    .line 136
    iget-object v3, v2, Ldaggero/internal/Linker$DeferredBinding;->deferredKey:Ljava/lang/String;

    .line 137
    iget-boolean v4, v2, Ldaggero/internal/Linker$DeferredBinding;->mustHaveInjections:Z

    .line 138
    iget-object v5, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_0
    iget-object v5, v1, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    iget-object v2, v2, Ldaggero/internal/Linker$DeferredBinding;->classLoader:Ljava/lang/ClassLoader;

    .line 143
    invoke-direct {p0, v3, v5, v2, v4}, Ldaggero/internal/Linker;->createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldaggero/internal/Binding;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Ldaggero/internal/Binding;->library()Z

    move-result v4

    invoke-virtual {v2, v4}, Ldaggero/internal/Binding;->setLibrary(Z)V

    .line 145
    invoke-virtual {v1}, Ldaggero/internal/Binding;->dependedOn()Z

    move-result v4

    invoke-virtual {v2, v4}, Ldaggero/internal/Binding;->setDependedOn(Z)V

    .line 147
    iget-object v4, v2, Ldaggero/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Ldaggero/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create binding for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_2
    :goto_1
    invoke-static {v2}, Ldaggero/internal/Linker;->scope(Ldaggero/internal/Binding;)Ldaggero/internal/Binding;

    move-result-object v2

    .line 152
    iget-object v4, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v2}, Ldaggero/internal/Linker;->putBinding(Ldaggero/internal/Binding;)V
    :try_end_0
    .catch Ldaggero/internal/Binding$InvalidBindingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 164
    throw v0

    :catch_2
    move-exception v2

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldaggero/internal/Linker;->addError(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v2, Ldaggero/internal/Binding;->UNRESOLVED:Ldaggero/internal/Binding;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldaggero/internal/Linker;->addError(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v2, Ldaggero/internal/Binding;->UNRESOLVED:Ldaggero/internal/Binding;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_4
    move-exception v2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Ldaggero/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ldaggero/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldaggero/internal/Linker;->addError(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v2, Ldaggero/internal/Binding;->UNRESOLVED:Ldaggero/internal/Binding;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 172
    iput-boolean v2, p0, Ldaggero/internal/Linker;->attachSuccess:Z

    .line 173
    invoke-virtual {v1, p0}, Ldaggero/internal/Binding;->attach(Ldaggero/internal/Linker;)V

    .line 174
    iget-boolean v2, p0, Ldaggero/internal/Linker;->attachSuccess:Z

    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v1}, Ldaggero/internal/Binding;->setLinked()V

    goto/16 :goto_0

    .line 177
    :cond_4
    iget-object v2, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    :cond_5
    :try_start_1
    iget-object v0, p0, Ldaggero/internal/Linker;->errorHandler:Ldaggero/internal/Linker$ErrorHandler;

    iget-object v1, p0, Ldaggero/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0, v1}, Ldaggero/internal/Linker$ErrorHandler;->handleErrors(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    iget-object v0, p0, Ldaggero/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldaggero/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    throw v0
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;)Ldaggero/internal/Binding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 241
    invoke-virtual/range {v1 .. v6}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 251
    invoke-virtual/range {v0 .. v5}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "ZZ)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ldaggero/internal/Linker;->assertLockHeld()V

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 279
    iget-object v2, v1, Ldaggero/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldaggero/internal/Binding;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_2

    .line 281
    invoke-virtual {v2}, Ldaggero/internal/Binding;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 278
    :cond_1
    iget-object v1, v1, Ldaggero/internal/Linker;->base:Ldaggero/internal/Linker;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-nez v2, :cond_3

    .line 288
    new-instance v2, Ldaggero/internal/Linker$DeferredBinding;

    invoke-direct {v2, p1, p3, p2, p4}, Ldaggero/internal/Linker$DeferredBinding;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)V

    .line 290
    invoke-virtual {v2, p5}, Ldaggero/internal/Binding;->setLibrary(Z)V

    .line 291
    invoke-virtual {v2, v1}, Ldaggero/internal/Binding;->setDependedOn(Z)V

    .line 292
    iget-object p1, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Ldaggero/internal/Linker;->attachSuccess:Z

    return-object v0

    .line 297
    :cond_3
    invoke-virtual {v2}, Ldaggero/internal/Binding;->isLinked()Z

    move-result p1

    if-nez p1, :cond_4

    .line 298
    iget-object p1, p0, Ldaggero/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_4
    invoke-virtual {v2, p5}, Ldaggero/internal/Binding;->setLibrary(Z)V

    .line 302
    invoke-virtual {v2, v1}, Ldaggero/internal/Binding;->setDependedOn(Z)V

    return-object v2
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;ZZ)Ldaggero/internal/Binding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "ZZ)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1
.end method
