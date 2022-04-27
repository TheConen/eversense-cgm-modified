.class public final Ldaggero/internal/codegen/ModuleAdapterProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ModuleAdapterProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation


# static fields
.field private static final INVALID_RETURN_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final remainingTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    const-class v1, Ljavax/inject/Provider;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ldaggero/Lazy;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->INVALID_RETURN_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private bindingClassName(Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Lcom/squareup/javapoet/ClassName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lcom/squareup/javapoet/ClassName;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)",
            "Lcom/squareup/javapoet/ClassName;"
        }
    .end annotation

    .line 400
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/ClassName;

    if-eqz v0, :cond_0

    return-object v0

    .line 403
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    .line 407
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, ""

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object p4

    .line 410
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 412
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ProvidesAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    .line 415
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 130
    iget-object v0, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private static extractDuplicates([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findProvidesMethods(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 227
    const-class v1, Ldaggero/Provides;

    invoke-interface {p1, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private generateModuleAdapter(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/List;)Lcom/squareup/javapoet/JavaFile;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lcom/squareup/javapoet/JavaFile;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "staticInjections"

    .line 237
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const-string v3, "injects"

    .line 238
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "includes"

    .line 239
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const-string v5, "overrides"

    .line 240
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "complete"

    .line 241
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v8, "library"

    .line 242
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 244
    invoke-static {v3}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->extractDuplicates([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'injects\' list contains duplicate entries: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 248
    :cond_0
    invoke-static {v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->extractDuplicates([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'includes\' list contains duplicate entries: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 253
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object v9

    const-string v1, "$$ModuleAdapter"

    .line 254
    invoke-static {v9, v1}, Ldaggero/internal/codegen/Util;->adapterName(Lcom/squareup/javapoet/ClassName;Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v10

    .line 256
    invoke-virtual {v10}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addOriginatingElement(Ljavax/lang/model/element/Element;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const-class v13, Ldaggero/Provides;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string v13, "A manager of modules and provides adapters allowing for proper linking and\ninstance provision of types served by {@code @$T} methods.\n"

    .line 258
    invoke-virtual {v1, v13, v12}, Lcom/squareup/javapoet/TypeSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    const-class v12, Ldaggero/internal/ModuleAdapter;

    .line 259
    invoke-static {v12}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v12

    new-array v13, v11, [Lcom/squareup/javapoet/TypeName;

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    const/4 v12, 0x2

    new-array v13, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v15, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v15, v13, v14

    sget-object v15, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v15, v13, v11

    .line 260
    invoke-virtual {v1, v13}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v13

    .line 262
    const-class v1, [Ljava/lang/String;

    new-array v15, v14, [Ljavax/lang/model/element/Modifier;

    const-string v12, "INJECTS"

    invoke-static {v1, v12, v15}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    const/4 v12, 0x3

    new-array v15, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v16, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v16, v15, v14

    sget-object v16, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v15, v11

    sget-object v16, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 263
    invoke-virtual {v1, v15}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v15, v11, [Ljava/lang/Object;

    .line 264
    invoke-direct {v7, v3}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->injectsInitializer([Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v3

    aput-object v3, v15, v14

    const-string v3, "$L"

    invoke-virtual {v1, v3, v15}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 262
    invoke-virtual {v13, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 266
    sget-object v1, Ldaggero/internal/codegen/Util;->ARRAY_OF_CLASS:Lcom/squareup/javapoet/TypeName;

    new-array v15, v14, [Ljavax/lang/model/element/Modifier;

    const-string v11, "STATIC_INJECTIONS"

    invoke-static {v1, v11, v15}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v11, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v15, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v15, v11, v14

    sget-object v15, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x1

    aput-object v15, v11, v12

    sget-object v15, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/16 v16, 0x2

    aput-object v15, v11, v16

    .line 267
    invoke-virtual {v1, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v11, v12, [Ljava/lang/Object;

    .line 268
    invoke-direct {v7, v2}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->staticInjectionsInitializer([Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v2

    aput-object v2, v11, v14

    invoke-virtual {v1, v3, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 266
    invoke-virtual {v13, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 270
    sget-object v1, Ldaggero/internal/codegen/Util;->ARRAY_OF_CLASS:Lcom/squareup/javapoet/TypeName;

    new-array v2, v14, [Ljavax/lang/model/element/Modifier;

    const-string v11, "INCLUDES"

    invoke-static {v1, v11, v2}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v11, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v2, v11, v14

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v12, 0x1

    aput-object v2, v11, v12

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/4 v15, 0x2

    aput-object v2, v11, v15

    .line 271
    invoke-virtual {v1, v11}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    .line 272
    invoke-direct {v7, v0, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->includesInitializer(Ljavax/lang/model/element/TypeElement;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v4

    aput-object v4, v2, v14

    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 270
    invoke-virtual {v13, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 274
    invoke-static {}, Lcom/squareup/javapoet/MethodSpec;->constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v14

    .line 275
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "super($T.class, INJECTS, STATIC_INJECTIONS, $L /*overrides*/, INCLUDES, $L /*complete*/, $L /*library*/)"

    .line 276
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    .line 274
    invoke-virtual {v13, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 281
    invoke-static/range {p1 .. p1}, Ldaggero/internal/codegen/Util;->getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 282
    invoke-static {v1}, Ldaggero/internal/codegen/Util;->isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "newModule"

    .line 283
    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/Override;

    .line 284
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v14

    .line 285
    invoke-virtual {v1, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 287
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    aput-object v0, v3, v14

    const-string v0, "return new $T()"

    invoke-virtual {v1, v0, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    .line 283
    invoke-virtual {v13, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 292
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 294
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "getBindings"

    .line 297
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "Used internally obtain dependency information, such as for cyclical\ngraph detection.\n"

    .line 298
    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Override;

    .line 299
    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v2, v14

    .line 300
    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ldaggero/internal/BindingsGroup;

    new-array v2, v14, [Ljavax/lang/model/element/Modifier;

    const-string v3, "bindings"

    .line 301
    invoke-virtual {v0, v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    new-array v1, v14, [Ljavax/lang/model/element/Modifier;

    const-string v2, "module"

    .line 302
    invoke-virtual {v0, v9, v2, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 304
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 305
    const-class v3, Ldaggero/Provides;

    invoke-interface {v2, v3}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ldaggero/Provides;

    .line 306
    sget-object v4, Ldaggero/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$daggero$Provides$Type:[I

    invoke-interface {v3}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v5

    invoke-virtual {v5}, Ldaggero/Provides$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const-string v6, "$T.add(bindings, $S, new $T(module))"

    const/4 v15, 0x2

    if-eq v4, v15, :cond_4

    const/4 v15, 0x3

    if-ne v4, v15, :cond_3

    new-array v3, v15, [Ljava/lang/Object;

    .line 323
    const-class v4, Ldaggero/internal/SetBinding;

    aput-object v4, v3, v14

    .line 325
    invoke-static {v2}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 326
    invoke-direct {v7, v10, v2, v11, v12}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Lcom/squareup/javapoet/ClassName;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 323
    invoke-virtual {v0, v6, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v15, 0x1

    goto :goto_0

    .line 331
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown @Provides type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    .line 315
    const-class v5, Ldaggero/internal/SetBinding;

    aput-object v5, v4, v14

    .line 317
    invoke-static {v2}, Ldaggero/internal/codegen/GeneratorKeys;->getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    aput-object v5, v4, v15

    .line 318
    invoke-direct {v7, v10, v2, v11, v12}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Lcom/squareup/javapoet/ClassName;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 315
    invoke-virtual {v0, v6, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    :cond_5
    move v15, v5

    const/4 v3, 0x3

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    .line 309
    invoke-static {v2}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    .line 310
    invoke-direct {v7, v10, v2, v11, v12}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Lcom/squareup/javapoet/ClassName;

    move-result-object v2

    aput-object v2, v4, v15

    const-string v2, "bindings.contributeProvidesBinding($S, new $T(module))"

    .line 308
    invoke-virtual {v0, v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_0

    .line 334
    :cond_6
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 337
    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v8

    .line 338
    invoke-direct/range {v0 .. v6}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->generateProvidesAdapter(Lcom/squareup/javapoet/ClassName;Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;Z)Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    .line 342
    :cond_8
    invoke-virtual {v10}, Lcom/squareup/javapoet/ClassName;->packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "Code generated by dagger-compiler.  Do not edit."

    .line 343
    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/JavaFile$Builder;->addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object v0

    return-object v0
.end method

.method private generateProvidesAdapter(Lcom/squareup/javapoet/ClassName;Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;Z)Lcom/squareup/javapoet/TypeSpec;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/ClassName;",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lcom/squareup/javapoet/ClassName;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;Z)",
            "Lcom/squareup/javapoet/TypeSpec;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 422
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 424
    invoke-direct {v0, v5, v2, v6, v7}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Lcom/squareup/javapoet/ClassName;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Lcom/squareup/javapoet/ClassName;

    move-result-object v5

    .line 426
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6}, Ldaggero/internal/codegen/Util;->injectableType(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v6

    .line 427
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    .line 428
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 430
    invoke-virtual {v5}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 431
    invoke-static {v6, v11, v11, v8}, Ldaggero/internal/codegen/AdapterJavadocs;->bindingTypeDocs(Lcom/squareup/javapoet/TypeName;ZZZ)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v12

    aput-object v12, v10, v11

    const-string v12, "$L"

    invoke-virtual {v5, v12, v10}, Lcom/squareup/javapoet/TypeSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    const/4 v10, 0x3

    new-array v12, v10, [Ljavax/lang/model/element/Modifier;

    sget-object v13, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v13, v12, v11

    sget-object v13, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v13, v12, v9

    sget-object v13, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 432
    invoke-virtual {v5, v12}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    const-class v12, Ldaggero/internal/ProvidesBinding;

    .line 433
    invoke-static {v12}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v12

    new-array v13, v9, [Lcom/squareup/javapoet/TypeName;

    aput-object v6, v13, v11

    invoke-static {v12, v13}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v5

    new-array v12, v14, [Ljavax/lang/model/element/Modifier;

    .line 435
    sget-object v13, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v13, v12, v11

    sget-object v13, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v13, v12, v9

    const-string v13, "module"

    invoke-virtual {v5, v1, v13, v12}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 436
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/lang/model/element/Element;

    .line 437
    invoke-interface {v15}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v10

    invoke-direct {v0, v15}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v15

    new-array v14, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v16, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v11

    invoke-virtual {v5, v10, v15, v14}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    const/4 v10, 0x3

    const/4 v14, 0x2

    goto :goto_0

    .line 440
    :cond_0
    const-class v10, Ljavax/inject/Singleton;

    invoke-interface {v2, v10}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-eqz v10, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v11

    .line 441
    :goto_1
    invoke-static/range {p3 .. p3}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {}, Lcom/squareup/javapoet/MethodSpec;->constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v12

    new-array v14, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v15, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v15, v14, v11

    .line 443
    invoke-virtual {v12, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v12

    new-array v14, v11, [Ljavax/lang/model/element/Modifier;

    .line 444
    invoke-virtual {v12, v1, v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v12

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v2, v14, v11

    if-eqz v10, :cond_2

    const-string v2, "IS_SINGLETON"

    goto :goto_2

    :cond_2
    const-string v2, "NOT_SINGLETON"

    :goto_2
    aput-object v2, v14, v9

    .line 448
    invoke-static {v4}, Ldaggero/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v14, v4

    const/4 v2, 0x3

    aput-object v3, v14, v2

    const-string v2, "super($S, $L, $S, $S)"

    .line 445
    invoke-virtual {v12, v2, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    const-string v10, "this.module = module"

    .line 450
    invoke-virtual {v2, v10, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    .line 451
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v10, "setLibrary($L)"

    invoke-virtual {v2, v10, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v2

    .line 442
    invoke-virtual {v5, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz v8, :cond_5

    const-string v2, "attach"

    .line 455
    invoke-static {v2}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    const-string v8, "Used internally to link bindings/providers together at run time\naccording to their dependency graph.\n"

    .line 456
    invoke-virtual {v2, v8, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-class v4, Ljava/lang/Override;

    .line 457
    invoke-virtual {v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    sget-object v4, Ldaggero/internal/codegen/Util;->UNCHECKED:Lcom/squareup/javapoet/AnnotationSpec;

    .line 458
    invoke-virtual {v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v4, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v4, v11

    .line 459
    invoke-virtual {v2, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-class v4, Ldaggero/internal/Linker;

    new-array v8, v11, [Ljavax/lang/model/element/Modifier;

    const-string v10, "linker"

    .line 460
    invoke-virtual {v2, v4, v10, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 461
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/VariableElement;

    .line 462
    invoke-static {v8}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Object;

    .line 465
    invoke-direct {v0, v8}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v11

    .line 466
    invoke-interface {v8}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-static {v8}, Ldaggero/internal/codegen/Util;->bindingOf(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v8

    aput-object v8, v12, v9

    const/4 v8, 0x2

    aput-object v10, v12, v8

    const/4 v10, 0x3

    aput-object v1, v12, v10

    const-string v14, "$N = ($T) linker.requestBinding($S, $T.class, getClass().getClassLoader())"

    .line 463
    invoke-virtual {v2, v14, v12}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_3

    .line 470
    :cond_3
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    const-string v1, "getDependencies"

    .line 472
    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    const-string v4, "Used internally obtain dependency information, such as for cyclical\ngraph detection.\n"

    .line 473
    invoke-virtual {v1, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/Override;

    .line 474
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v2, v11

    .line 475
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    sget-object v2, Ldaggero/internal/codegen/Util;->SET_OF_BINDINGS:Lcom/squareup/javapoet/TypeName;

    new-array v4, v11, [Ljavax/lang/model/element/Modifier;

    const-string v8, "getBindings"

    .line 476
    invoke-virtual {v1, v2, v8, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    sget-object v2, Ldaggero/internal/codegen/Util;->SET_OF_BINDINGS:Lcom/squareup/javapoet/TypeName;

    new-array v4, v11, [Ljavax/lang/model/element/Modifier;

    const-string v8, "injectMembersBindings"

    .line 477
    invoke-virtual {v1, v2, v8, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 478
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    new-array v8, v9, [Ljava/lang/Object;

    .line 479
    invoke-direct {v0, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v11

    const-string v4, "getBindings.add($N)"

    invoke-virtual {v1, v4, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_4

    .line 481
    :cond_4
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_5
    const-string v1, "get"

    .line 484
    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v6, v2, v11

    const-string v4, "Returns the fully provisioned instance satisfying the contract for\n{@code Provider<$T>}.\n"

    .line 485
    invoke-virtual {v1, v4, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/Override;

    .line 486
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v2, v11

    .line 487
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 488
    invoke-virtual {v1, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v11

    const-string v3, "return module.$N("

    .line 489
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 491
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v9

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    if-nez v3, :cond_6

    new-array v3, v11, [Ljava/lang/Object;

    const-string v6, ", "

    .line 492
    invoke-virtual {v1, v6, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    :cond_6
    new-array v3, v9, [Ljava/lang/Object;

    .line 493
    invoke-direct {v0, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "$N.get()"

    invoke-virtual {v1, v4, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move v3, v11

    goto :goto_5

    :cond_7
    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, ");\n"

    .line 496
    invoke-virtual {v1, v3, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 497
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 499
    invoke-virtual {v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v1

    return-object v1
.end method

.method private includesInitializer(Ljavax/lang/model/element/TypeElement;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;
    .locals 9

    .line 381
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "{ "

    .line 382
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 383
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 384
    instance-of v5, v4, Ljavax/lang/model/type/TypeMirror;

    if-nez v5, :cond_0

    .line 386
    iget-object v5, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v5

    sget-object v6, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in includes of "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 390
    :cond_0
    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "$T.class, "

    .line 391
    invoke-virtual {v0, v4, v5}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "}"

    .line 393
    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 394
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private injectsInitializer([Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;
    .locals 6

    .line 357
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "{ "

    .line 358
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 359
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 360
    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    .line 361
    invoke-static {v4}, Ldaggero/internal/codegen/Util;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-static {v4}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 363
    :cond_0
    invoke-static {v4}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "$S, "

    .line 364
    invoke-virtual {v0, v4, v5}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "}"

    .line 366
    invoke-virtual {v0, v1, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 367
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2

    .line 503
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "module"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 506
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private providerMethodsByClass(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    .line 138
    iget-object v1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-direct {p0, p1}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->findProvidesMethods(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    .line 144
    sget-object v5, Ldaggero/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected @Provides on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    .line 153
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v7

    .line 154
    sget-object v8, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    .line 155
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    .line 161
    :cond_1
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v7

    .line 162
    sget-object v8, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "."

    if-nez v8, :cond_7

    sget-object v8, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    .line 163
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 164
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_1

    .line 170
    :cond_2
    move-object v7, v4

    check-cast v7, Ljavax/lang/model/element/ExecutableElement;

    .line 171
    invoke-interface {v7}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Provides methods must not have a throws clause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-direct {p0, v5, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 178
    :cond_3
    invoke-interface {v7}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-interface {v1, v8}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 179
    invoke-interface {v8}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v9, v10}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 182
    sget-object v9, Ldaggero/internal/codegen/ModuleAdapterProcessor;->INVALID_RETURN_TYPES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 183
    invoke-interface {v0, v10}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 185
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-interface {v1, v11}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    .line 184
    invoke-interface {v1, v8, v11}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    .line 187
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const-string v5, "@Provides method must not return %s directly: %s.%s"

    .line 186
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 193
    :cond_5
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6

    .line 195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 165
    :cond_7
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Provides methods must not be private, abstract or static: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-direct {p0, v5, v4}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 156
    :cond_8
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Classes declaring @Provides methods must not be private or abstract: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-direct {p0, v4, v5}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "java.lang.Object"

    .line 201
    invoke-interface {v0, v3}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 205
    const-class v3, Ldaggero/Module;

    invoke-interface {p1, v3}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 206
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v4, v5}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Modules must be classes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_3

    .line 211
    :cond_a
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 214
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modules must not extend from other classes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ldaggero/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 218
    :cond_b
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    .line 220
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    return-object v2
.end method

.method private staticInjectionsInitializer([Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;
    .locals 6

    .line 371
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "{ "

    .line 372
    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 373
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "$T.class, "

    .line 374
    invoke-virtual {v0, v4, v5}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "}"

    .line 376
    invoke-virtual {v0, v1, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 377
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 95
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

    .line 99
    iget-object p1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p2}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->providerMethodsByClass(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 100
    iget-object p1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 103
    iget-object v2, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    :try_start_0
    const-class v2, Ldaggero/Module;

    invoke-static {v2, v1}, Ldaggero/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has @Provides methods but no @Module annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, v1, v2, v0}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->generateModuleAdapter(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/List;)Lcom/squareup/javapoet/JavaFile;

    move-result-object v0

    .line 114
    iget-object v2, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V
    :try_end_0
    .catch Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code gen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ldaggero/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 120
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 123
    iget-object p1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    sget-object p2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find types required by provides methods for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldaggero/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    .line 124
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {p1, p2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
