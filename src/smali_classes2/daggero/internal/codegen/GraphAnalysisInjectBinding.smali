.class final Ldaggero/internal/codegen/GraphAnalysisInjectBinding;
.super Ldaggero/internal/Binding;
.source "GraphAnalysisInjectBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final bindings:[Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeKey:Ljava/lang/String;

.field private final type:Ljavax/lang/model/element/TypeElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p3, v0}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2, v0, v1}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 49
    iput-object p3, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->type:Ljavax/lang/model/element/TypeElement;

    .line 50
    iput-object p4, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    .line 51
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ldaggero/internal/Binding;

    iput-object p1, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldaggero/internal/Binding;

    .line 52
    iput-object p5, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->supertypeKey:Ljava/lang/String;

    return-void
.end method

.method static create(Ljavax/lang/model/element/TypeElement;Z)Ldaggero/internal/codegen/GraphAnalysisInjectBinding;
    .locals 8

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 61
    sget-object v5, Ldaggero/internal/codegen/GraphAnalysisInjectBinding$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    .line 92
    invoke-static {v3}, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected @Inject annotation on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2
    move-object v5, v3

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 71
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    .line 72
    invoke-static {v3}, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 73
    invoke-static {v3}, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->hasAtSingleton(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    .line 83
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 84
    invoke-static {v3}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_0

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many injectable constructors on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Singleton annotations have no effect on constructors. Did you mean to annotate the class? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v6

    goto/16 :goto_0

    .line 63
    :cond_7
    invoke-static {v3}, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    check-cast v3, Ljavax/lang/model/element/VariableElement;

    invoke-static {v3}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_a

    .line 98
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    goto :goto_2

    .line 99
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No injectable members on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Do you want to add an injectable constructor?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_a
    :goto_2
    invoke-static {p0}, Ldaggero/internal/codegen/Util;->getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 106
    invoke-static {p1}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_b
    move-object v5, v0

    :goto_3
    if-nez v1, :cond_d

    if-eqz v2, :cond_c

    .line 109
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto :goto_5

    .line 110
    :cond_d
    :goto_4
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 112
    :goto_5
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance p1, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method private static hasAtInject(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 117
    const-class v0, Ljavax/inject/Inject;

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasAtSingleton(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 121
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 7

    .line 125
    iget-object v0, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->type:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldaggero/internal/Binding;

    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 127
    invoke-virtual {p1, v2, v3, v4}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->supertypeKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 137
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

    .line 145
    iget-object p2, p0, Ldaggero/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldaggero/internal/Binding;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 141
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Compile-time binding should never be called to inject."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
