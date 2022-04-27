.class public final Ldaggero/internal/codegen/InjectAdapterProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "InjectAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "javax.inject.Inject"
    }
.end annotation


# instance fields
.field private final remainingTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    return-void
.end method

.method private allTypesExist(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 125
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private attachMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLcom/squareup/javapoet/ClassName;Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/MethodSpec;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)",
            "Lcom/squareup/javapoet/MethodSpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "attach"

    .line 360
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Used internally to link bindings/providers together at run time\naccording to their dependency graph.\n"

    .line 361
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v1

    .line 362
    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v3, Ldaggero/internal/Linker;

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    const-string v5, "linker"

    .line 363
    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    if-eqz p6, :cond_0

    .line 366
    const-class p6, Ljava/lang/Override;

    invoke-virtual {v0, p6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 368
    :cond_0
    sget-object p6, Ldaggero/internal/codegen/Util;->UNCHECKED:Lcom/squareup/javapoet/AnnotationSpec;

    invoke-virtual {v0, p6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const-string p6, "$N = ($T) linker.requestBinding($S, $T.class, getClass().getClassLoader())"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    new-array v7, v5, [Ljava/lang/Object;

    .line 373
    invoke-direct {p0, p3, v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v6}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-static {v8}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v8

    aput-object v8, v7, v2

    .line 374
    invoke-static {v6}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object p4, v7, v3

    .line 371
    invoke-virtual {v0, p6, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    new-array v6, v5, [Ljava/lang/Object;

    .line 380
    invoke-direct {p0, p3, p2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-static {v7}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v7

    aput-object v7, v6, v2

    check-cast p2, Ljavax/lang/model/element/VariableElement;

    .line 381
    invoke-static {p2}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v4

    aput-object p4, v6, v3

    .line 378
    invoke-virtual {v0, p6, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "supertype"

    aput-object p2, p1, v1

    .line 388
    invoke-static {p5}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p2

    aput-object p2, p1, v2

    .line 389
    invoke-static {p5}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    aput-object p4, p1, v3

    const-string p2, "$N = ($T) linker.requestBinding($S, $T.class, getClass().getClassLoader(), false, true)"

    .line 384
    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 391
    :cond_3
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private createInjectedClass(Ljava/lang/String;)Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;
    .locals 9

    .line 192
    iget-object v0, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/Element;

    .line 198
    const-class v7, Ljavax/inject/Inject;

    invoke-interface {v6, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    sget-object v7, Ldaggero/internal/codegen/InjectAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot inject "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many injectable constructors on "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Abstract class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " must not have an @Inject-annotated constructor."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 219
    :cond_3
    :goto_1
    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    move-object v5, v6

    goto :goto_0

    .line 204
    :cond_4
    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 205
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 207
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    if-nez v5, :cond_8

    if-nez v0, :cond_8

    .line 229
    invoke-static {p1}, Ldaggero/internal/codegen/Util;->getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 230
    invoke-static {v0}, Ldaggero/internal/codegen/Util;->isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v0

    goto :goto_2

    :cond_8
    move-object v4, v5

    .line 235
    :goto_2
    new-instance v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;

    invoke-direct {v0, p1, v1, v4, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;-><init>(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    return-object v0
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 484
    iget-object v0, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "field_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    const-class v1, Ljavax/inject/Inject;

    invoke-interface {p1, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 136
    invoke-direct {p0, v1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->validateInjectable(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Ldaggero/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 246
    invoke-static/range {p1 .. p1}, Ldaggero/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-static/range {p1 .. p1}, Ldaggero/internal/codegen/Util;->getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v2, v7, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    :cond_0
    move-object v10, v1

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object v11

    const-string v1, "$$InjectAdapter"

    .line 252
    invoke-static {v11, v1}, Ldaggero/internal/codegen/Util;->adapterName(Lcom/squareup/javapoet/ClassName;Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v1

    .line 254
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 255
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move v13, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v13, v4

    .line 256
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v8, :cond_3

    .line 258
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v14, v4

    goto :goto_2

    :cond_3
    move v14, v12

    :goto_2
    if-nez v13, :cond_5

    if-eqz v8, :cond_4

    .line 260
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v12

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v4

    .line 262
    :goto_4
    invoke-virtual {v1}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addOriginatingElement(Ljavax/lang/model/element/Element;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v12

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v4

    .line 264
    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    const-class v5, Ldaggero/internal/Binding;

    .line 265
    invoke-static {v5}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v5

    new-array v6, v4, [Lcom/squareup/javapoet/TypeName;

    aput-object v11, v6, v12

    invoke-static {v5, v6}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 266
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Ldaggero/internal/codegen/Util;->injectableType(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v5

    invoke-static {v5, v2, v13, v3}, Ldaggero/internal/codegen/AdapterJavadocs;->bindingTypeDocs(Lcom/squareup/javapoet/TypeName;ZZZ)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lcom/squareup/javapoet/CodeBlock;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v12

    const-string v2, "$L"

    .line 266
    invoke-virtual {v1, v2, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v15

    .line 269
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    .line 270
    invoke-direct {v7, v14, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->memberBindingField(ZLjavax/lang/model/element/Element;)Lcom/squareup/javapoet/FieldSpec;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_5

    :cond_6
    if-eqz v8, :cond_7

    .line 273
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 274
    invoke-direct {v7, v14, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->parameterBindingField(ZLjavax/lang/model/element/VariableElement;)Lcom/squareup/javapoet/FieldSpec;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_6

    :cond_7
    if-eqz v10, :cond_8

    .line 278
    invoke-direct {v7, v10}, Ldaggero/internal/codegen/InjectAdapterProcessor;->supertypeBindingField(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 281
    :cond_8
    invoke-direct {v7, v8, v0, v11}, Ldaggero/internal/codegen/InjectAdapterProcessor;->writeInjectAdapterConstructor(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v14

    move-object v4, v11

    move-object v5, v10

    .line 283
    invoke-direct/range {v0 .. v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->attachMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLcom/squareup/javapoet/ClassName;Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v4, v10

    .line 285
    invoke-direct/range {v0 .. v5}, Ldaggero/internal/codegen/InjectAdapterProcessor;->getDependenciesMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_9
    if-eqz v8, :cond_a

    .line 290
    invoke-direct {v7, v8, v14, v13, v11}, Ldaggero/internal/codegen/InjectAdapterProcessor;->getMethod(Ljavax/lang/model/element/ExecutableElement;ZZLcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    .line 289
    invoke-virtual {v15, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p3

    .line 294
    invoke-direct {v7, v0, v14, v11, v10}, Ldaggero/internal/codegen/InjectAdapterProcessor;->membersInjectMethod(Ljava/util/List;ZLcom/squareup/javapoet/ClassName;Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    .line 293
    invoke-virtual {v15, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 297
    :cond_b
    invoke-virtual {v15}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "Code generated by dagger-compiler.  Do not edit."

    .line 298
    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/JavaFile$Builder;->addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object v0

    .line 300
    iget-object v1, v7, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V

    return-void
.end method

.method private generateInjectionsForClass(Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-nez v0, :cond_0

    iget-object v0, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object v1, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    iget-object v2, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    .line 114
    :cond_1
    iget-object v0, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object p1, p1, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object v7

    .line 308
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    const-string v1, "$$StaticInjection"

    invoke-static {v0, v1}, Ldaggero/internal/codegen/Util;->adapterName(Lcom/squareup/javapoet/ClassName;Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addOriginatingElement(Ljavax/lang/model/element/Element;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    const-string v3, "A manager for {@code $T}\'s injections into static fields.\n"

    .line 312
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v8

    sget-object v3, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v1

    .line 313
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    const-class v1, Ldaggero/internal/StaticInjection;

    .line 314
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v9

    .line 315
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 316
    invoke-direct {p0, v8, v1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->memberBindingField(ZLjavax/lang/model/element/Element;)Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, v7

    .line 318
    invoke-direct/range {v0 .. v6}, Ldaggero/internal/codegen/InjectAdapterProcessor;->attachMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLcom/squareup/javapoet/ClassName;Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 319
    invoke-direct {p0, p2, v7}, Ldaggero/internal/codegen/InjectAdapterProcessor;->staticInjectMethod(Ljava/util/List;Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object p2

    invoke-virtual {v9, p2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 321
    invoke-static {p1}, Ldaggero/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {v9}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "Code generated by dagger-compiler.  Do not edit."

    .line 323
    invoke-virtual {p1, v0, p2}, Lcom/squareup/javapoet/JavaFile$Builder;->addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object p1

    .line 325
    iget-object p2, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V

    return-void
.end method

.method private getDependenciesMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/MethodSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)",
            "Lcom/squareup/javapoet/MethodSpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getDependencies"

    .line 397
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Used internally obtain dependency information, such as for cyclical\ngraph detection.\n"

    .line 398
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v1

    .line 399
    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    sget-object v3, Ldaggero/internal/codegen/Util;->SET_OF_BINDINGS:Lcom/squareup/javapoet/TypeName;

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    const-string v5, "getBindings"

    .line 400
    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    sget-object v3, Ldaggero/internal/codegen/Util;->SET_OF_BINDINGS:Lcom/squareup/javapoet/TypeName;

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    const-string v5, "injectMembersBindings"

    .line 401
    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 404
    const-class p5, Ljava/lang/Override;

    invoke-virtual {v0, p5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_0
    if-eqz p1, :cond_1

    .line 407
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljavax/lang/model/element/Element;

    new-array v3, v2, [Ljava/lang/Object;

    .line 408
    invoke-direct {p0, p3, p5}, Ldaggero/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, v3, v1

    const-string p5, "getBindings.add($N)"

    invoke-virtual {v0, p5, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 411
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p5, "injectMembersBindings.add($N)"

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    new-array v3, v2, [Ljava/lang/Object;

    .line 412
    invoke-direct {p0, p3, p2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {v0, p5, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "supertype"

    aput-object p2, p1, v1

    .line 415
    invoke-virtual {v0, p5, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 417
    :cond_3
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private getMethod(Ljavax/lang/model/element/ExecutableElement;ZZLcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;
    .locals 6

    const-string v0, "get"

    .line 422
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const-string v4, "Returns the fully provisioned instance satisfying the contract for\n{@code Provider<$T>}.\n"

    .line 423
    invoke-virtual {v0, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v2, Ljava/lang/Override;

    .line 424
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p4}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v2, v3

    .line 426
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v3

    aput-object p4, v2, v1

    const-string p4, "$T result = new $T("

    .line 428
    invoke-virtual {v0, p4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 430
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p4, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    if-nez p4, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ", "

    .line 431
    invoke-virtual {v0, v5, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1

    :cond_0
    move p4, v3

    :goto_1
    new-array v4, v1, [Ljava/lang/Object;

    .line 433
    invoke-direct {p0, p2, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "$N.get()"

    invoke-virtual {v0, v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, ");\n"

    .line 435
    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    if-eqz p3, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "injectMembers(result)"

    .line 437
    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "return result"

    .line 439
    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 440
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private memberBindingField(ZLjavax/lang/model/element/Element;)Lcom/squareup/javapoet/FieldSpec;
    .locals 3

    .line 329
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    invoke-static {v0, p1, p2}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object p1

    return-object p1
.end method

.method private membersInjectMethod(Ljava/util/List;ZLcom/squareup/javapoet/ClassName;Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/MethodSpec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lcom/squareup/javapoet/MethodSpec;"
        }
    .end annotation

    const-string v0, "injectMembers"

    .line 445
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v4, "Injects any {@code @Inject} annotated fields in the given instance,\nsatisfying the contract for {@code Provider<$T>}.\n"

    .line 446
    invoke-virtual {v0, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v2, Ljava/lang/Override;

    .line 447
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v2, v3

    .line 448
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v2, v3, [Ljavax/lang/model/element/Modifier;

    const-string v4, "object"

    .line 449
    invoke-virtual {v0, p3, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p3

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 452
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    aput-object v4, v2, v3

    .line 453
    invoke-direct {p0, p2, v0}, Ldaggero/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "object.$N = $N.get()"

    .line 451
    invoke-virtual {p3, v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "supertype.injectMembers(object)"

    .line 456
    invoke-virtual {p3, p2, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 458
    :cond_1
    invoke-virtual {p3}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private parameterBindingField(ZLjavax/lang/model/element/VariableElement;)Lcom/squareup/javapoet/FieldSpec;
    .locals 3

    .line 334
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    .line 335
    invoke-direct {p0, p1, p2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 334
    invoke-static {v0, p1, p2}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object p1

    return-object p1
.end method

.method private parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "parameter_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private staticInjectMethod(Ljava/util/List;Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Lcom/squareup/javapoet/ClassName;",
            ")",
            "Lcom/squareup/javapoet/MethodSpec;"
        }
    .end annotation

    const-string v0, "inject"

    .line 462
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Ldaggero/ObjectGraph;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Performs the injections of dependencies into static fields when requested by\nthe {@code $T}.\n"

    .line 463
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v2, Ljava/lang/Override;

    .line 464
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v4

    .line 465
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    .line 469
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v5, 0x2

    .line 470
    invoke-direct {p0, v4, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "$T.$N = $N.get()"

    .line 467
    invoke-virtual {v0, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private supertypeBindingField(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/FieldSpec;
    .locals 3

    .line 339
    invoke-static {p1}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "supertype"

    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object p1

    return-object p1
.end method

.method private validateInjectable(Ljavax/lang/model/element/Element;)Z
    .locals 6

    .line 145
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 147
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Inject is not valid on a class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 152
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method injection is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 157
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_2

    .line 158
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a final field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 163
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_3

    .line 164
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a private field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 169
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_4

    .line 170
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a private constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 175
    :cond_4
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v1, v4

    .line 177
    :goto_1
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t inject a non-static inner class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    :cond_7
    return v4
.end method

.method private writeInjectAdapterConstructor(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec;
    .locals 6

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 347
    :goto_0
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 348
    const-class v1, Ljavax/inject/Singleton;

    invoke-interface {p2, v1}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    .line 350
    :goto_1
    invoke-static {}, Lcom/squareup/javapoet/MethodSpec;->constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v2

    .line 351
    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v0, v4, v1

    const/4 p1, 0x2

    if-eqz p2, :cond_2

    const-string p2, "IS_SINGLETON"

    goto :goto_2

    :cond_2
    const-string p2, "NOT_SINGLETON"

    :goto_2
    aput-object p2, v4, p1

    const/4 p1, 0x3

    aput-object p3, v4, p1

    const-string p1, "super($S, $S, $N, $T.class)"

    .line 352
    invoke-virtual {v3, p1, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 81
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-direct {p0, p2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object p1, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ldaggero/internal/codegen/InjectAdapterProcessor;->createInjectedClass(Ljava/lang/String;)Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;

    move-result-object v0

    .line 89
    iget-object v2, v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    .line 90
    invoke-direct {p0, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-eqz v2, :cond_1

    iget-object v2, v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    .line 92
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-direct {p0, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    .line 93
    invoke-direct {p0, v2}, Ldaggero/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_0

    .line 96
    :try_start_0
    invoke-direct {p0, v0}, Ldaggero/internal/codegen/InjectAdapterProcessor;->generateInjectionsForClass(Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code gen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Ldaggero/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v1, v0}, Ldaggero/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 103
    :cond_4
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 104
    iget-object p1, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    sget-object p2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find injection type required by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldaggero/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_5
    return v1
.end method
