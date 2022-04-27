.class final Ldaggero/ObjectGraph$StandardBindings;
.super Ldaggero/internal/BindingsGroup;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardBindings"
.end annotation


# instance fields
.field private final setBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldaggero/internal/SetBinding<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 326
    invoke-direct {p0}, Ldaggero/internal/BindingsGroup;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldaggero/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldaggero/internal/SetBinding<",
            "*>;>;)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Ldaggero/internal/BindingsGroup;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldaggero/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    .line 332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaggero/internal/SetBinding;

    .line 334
    new-instance v1, Ldaggero/internal/SetBinding;

    invoke-direct {v1, v0}, Ldaggero/internal/SetBinding;-><init>(Ldaggero/internal/SetBinding;)V

    .line 335
    iget-object v0, p0, Ldaggero/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, v1, Ldaggero/internal/SetBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ldaggero/ObjectGraph$StandardBindings;->put(Ljava/lang/String;Ldaggero/internal/Binding;)Ldaggero/internal/Binding;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ldaggero/ObjectGraph$StandardBindings;)Ljava/util/List;
    .locals 0

    .line 323
    iget-object p0, p0, Ldaggero/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldaggero/internal/SetBinding;)Ldaggero/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldaggero/internal/SetBinding<",
            "*>;)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Ldaggero/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-super {p0, p1, p2}, Ldaggero/internal/BindingsGroup;->put(Ljava/lang/String;Ldaggero/internal/Binding;)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1
.end method
