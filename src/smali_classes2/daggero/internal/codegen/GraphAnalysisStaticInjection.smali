.class public final Ldaggero/internal/codegen/GraphAnalysisStaticInjection;
.super Ldaggero/internal/StaticInjection;
.source "GraphAnalysisStaticInjection.java"


# instance fields
.field private final enclosingClass:Ljavax/lang/model/element/Element;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/Element;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ldaggero/internal/StaticInjection;-><init>()V

    .line 31
    iput-object p1, p0, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 4

    .line 35
    iget-object v0, p0, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 36
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ldaggero/internal/codegen/Util;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-class v2, Ljavax/inject/Inject;

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljavax/inject/Inject;

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 40
    invoke-virtual {p1, v1, v2, v3}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public inject()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
