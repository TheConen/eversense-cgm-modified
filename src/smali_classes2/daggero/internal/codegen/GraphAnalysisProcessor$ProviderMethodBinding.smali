.class Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;
.super Ldaggero/internal/ProvidesBinding;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/codegen/GraphAnalysisProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProviderMethodBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Ljavax/lang/model/element/ExecutableElement;

.field private final parameters:[Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Z)V
    .locals 3

    .line 335
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p2, v0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    invoke-static {p2}, Ldaggero/internal/codegen/Util;->className(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-direct {p0, p1, v0, v1, v2}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-object p2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 338
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ldaggero/internal/Binding;

    iput-object p1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldaggero/internal/Binding;

    .line 339
    invoke-virtual {p0, p3}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 5

    const/4 v0, 0x0

    .line 343
    :goto_0
    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 345
    invoke-static {v1}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v1

    .line 346
    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldaggero/internal/Binding;

    iget-object v3, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 346
    invoke-virtual {p1, v1, v3, v4}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Compile-time binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
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

    .line 360
    iget-object p2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldaggero/internal/Binding;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 356
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Compile-time binding should never be called to inject."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvidesBinding[key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->moduleClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 365
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
