.class public final Ldaggero/internal/codegen/GraphAnalysisProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;,
        Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "dagger.Module"
    }
.end annotation


# static fields
.field private static final ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delayedModuleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "com.sun.tools.javac.code.Symbol$CompletionFailure"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    return-void
.end method

.method private elements()Ljavax/lang/model/util/Elements;
    .locals 1

    .line 279
    iget-object v0, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    return-object v0
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 161
    iget-object v0, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 166
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 167
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v0, v2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 171
    sget-object v3, Ldaggero/internal/Linker$ErrorHandler;->NULL:Ldaggero/internal/Linker$ErrorHandler;

    goto :goto_0

    :cond_0
    new-instance v4, Ldaggero/internal/codegen/GraphAnalysisErrorHandler;

    iget-object v5, v1, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 172
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ldaggero/internal/codegen/GraphAnalysisErrorHandler;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V

    move-object v3, v4

    .line 173
    :goto_0
    new-instance v10, Ldaggero/internal/Linker;

    const/4 v4, 0x0

    new-instance v5, Ldaggero/internal/codegen/GraphAnalysisLoader;

    iget-object v6, v1, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v5, v6}, Ldaggero/internal/codegen/GraphAnalysisLoader;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-direct {v10, v4, v5, v3}, Ldaggero/internal/Linker;-><init>(Ldaggero/internal/Linker;Ldaggero/internal/Loader;Ldaggero/internal/Linker$ErrorHandler;)V

    .line 177
    monitor-enter v10

    .line 178
    :try_start_0
    new-instance v3, Ldaggero/internal/codegen/GraphAnalysisProcessor$1;

    invoke-direct {v3, v1}, Ldaggero/internal/codegen/GraphAnalysisProcessor$1;-><init>(Ldaggero/internal/codegen/GraphAnalysisProcessor;)V

    .line 183
    new-instance v11, Ldaggero/internal/codegen/GraphAnalysisProcessor$2;

    invoke-direct {v11, v1}, Ldaggero/internal/codegen/GraphAnalysisProcessor$2;-><init>(Ldaggero/internal/codegen/GraphAnalysisProcessor;)V

    .line 188
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljavax/lang/model/element/TypeElement;

    .line 189
    const-class v4, Ldaggero/Module;

    invoke-static {v4, v12}, Ldaggero/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v13

    const-string v4, "overrides"

    .line 190
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v4, "library"

    .line 191
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v14, :cond_1

    move-object v9, v11

    goto :goto_2

    :cond_1
    move-object v9, v3

    .line 195
    :goto_2
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v4, "injects"

    .line 196
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    array-length v6, v7

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v4, v7, v5

    .line 197
    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    move-object/from16 p1, v0

    .line 198
    invoke-static {v4}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {v4}, Ldaggero/internal/codegen/Util;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v17

    if-eqz v17, :cond_2

    goto :goto_4

    .line 202
    :cond_2
    invoke-static {v4}, Ldaggero/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_4
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 204
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v4, v10

    move/from16 v21, v5

    move-object v5, v0

    move v0, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move/from16 p2, v0

    move-object v0, v8

    move/from16 v8, v19

    move-object/from16 v18, v11

    move-object v11, v9

    move/from16 v9, v20

    .line 203
    invoke-virtual/range {v4 .. v9}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    add-int/lit8 v5, v21, 0x1

    move/from16 v6, p2

    move-object v8, v0

    move-object v9, v11

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object/from16 p1, v0

    move-object v0, v8

    move-object/from16 v18, v11

    move-object v11, v9

    const-string v4, "staticInjections"

    .line 208
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move/from16 v6, v16

    :goto_5
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 209
    check-cast v7, Ljavax/lang/model/type/TypeMirror;

    .line 210
    iget-object v8, v1, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v8}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v8

    invoke-interface {v8, v7}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v7

    .line 211
    new-instance v8, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;

    invoke-direct {v8, v7}, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;-><init>(Ljavax/lang/model/element/Element;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 215
    :cond_4
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/Element;

    .line 216
    const-class v6, Ldaggero/Provides;

    invoke-interface {v5, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ldaggero/Provides;

    if-nez v6, :cond_5

    goto :goto_6

    .line 220
    :cond_5
    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 221
    invoke-static {v5}, Ldaggero/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v7

    .line 222
    new-instance v8, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;

    invoke-direct {v8, v7, v5, v15}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;-><init>(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Z)V

    .line 224
    invoke-virtual {v11, v7}, Ldaggero/internal/BindingsGroup;->get(Ljava/lang/String;)Ldaggero/internal/Binding;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 226
    invoke-interface {v6}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v12

    sget-object v13, Ldaggero/Provides$Type;->SET:Ldaggero/Provides$Type;

    if-eq v12, v13, :cond_6

    invoke-interface {v6}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v12

    sget-object v13, Ldaggero/Provides$Type;->SET_VALUES:Ldaggero/Provides$Type;

    if-ne v12, v13, :cond_7

    :cond_6
    instance-of v12, v9, Ldaggero/internal/SetBinding;

    if-eqz v12, :cond_7

    goto :goto_7

    .line 230
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate bindings for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v14, :cond_8

    .line 232
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in override module(s) - cannot override an override"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 234
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":\n    "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Ldaggero/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n    "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Ldaggero/internal/ProvidesBinding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-direct {v1, v9, v5}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 239
    :cond_9
    :goto_7
    sget-object v9, Ldaggero/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$daggero$Provides$Type:[I

    invoke-interface {v6}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v12

    invoke-virtual {v12}, Ldaggero/Provides$Type;->ordinal()I

    move-result v12

    aget v9, v9, v12

    const/4 v12, 0x1

    if-eq v9, v12, :cond_c

    const/4 v12, 0x2

    if-eq v9, v12, :cond_b

    const/4 v5, 0x3

    if-ne v9, v5, :cond_a

    .line 257
    invoke-static {v11, v7, v8}, Ldaggero/internal/SetBinding;->add(Ldaggero/internal/BindingsGroup;Ljava/lang/String;Ldaggero/internal/Binding;)V

    goto/16 :goto_6

    .line 261
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown @Provides type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ldaggero/Provides;->type()Ldaggero/Provides$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 252
    :cond_b
    invoke-static {v5}, Ldaggero/internal/codegen/GeneratorKeys;->getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v11, v5, v8}, Ldaggero/internal/SetBinding;->add(Ldaggero/internal/BindingsGroup;Ljava/lang/String;Ldaggero/internal/Binding;)V

    goto/16 :goto_6

    .line 241
    :cond_c
    iget-object v6, v8, Ldaggero/internal/ProvidesBinding;->provideKey:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 242
    invoke-virtual {v8, v12}, Ldaggero/internal/ProvidesBinding;->setDependedOn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_d
    :try_start_1
    invoke-virtual {v11, v7, v8}, Ldaggero/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldaggero/internal/ProvidesBinding;)Ldaggero/internal/Binding;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 247
    :try_start_2
    new-instance v0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw v0

    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v11, v18

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v11

    .line 266
    invoke-virtual {v10, v3}, Ldaggero/internal/Linker;->installBindings(Ldaggero/internal/BindingsGroup;)V

    move-object/from16 v0, v18

    .line 267
    invoke-virtual {v10, v0}, Ldaggero/internal/Linker;->installBindings(Ldaggero/internal/BindingsGroup;)V

    .line 268
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;

    .line 269
    invoke-virtual {v2, v10}, Ldaggero/internal/codegen/GraphAnalysisStaticInjection;->attach(Ldaggero/internal/Linker;)V

    goto :goto_8

    .line 274
    :cond_10
    invoke-virtual {v10}, Ldaggero/internal/Linker;->linkAll()Ljava/util/Map;

    move-result-object v0

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    .line 275
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    const-class v0, Ldaggero/Module;

    invoke-static {v0, p1}, Ldaggero/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 291
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-interface {p3, v1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Module Inclusion Cycle: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    move-object v3, v1

    .line 299
    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 301
    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "\n"

    .line 302
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " included by "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    move-object v3, v4

    goto :goto_0

    :cond_0
    const-string p3, "\n0. "

    .line 305
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " includes itself directly."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_1
    new-instance p3, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw p3

    .line 309
    :cond_2
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "includes"

    .line 314
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "addsTo"

    .line 315
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Ljava/lang/Void;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 317
    instance-of v4, v3, Ljavax/lang/model/type/TypeMirror;

    if-nez v4, :cond_4

    .line 319
    iget-object v4, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v4

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value for include: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    .line 323
    :cond_4
    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 324
    invoke-interface {p3, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0, v3, p2, p3}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 326
    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void

    .line 287
    :cond_6
    new-instance p2, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No @Module on "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw p2
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 79
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 8
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

    .line 87
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 90
    const-class p1, Ldaggero/Module;

    invoke-interface {p2, p1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 91
    instance-of v1, p2, Ljavax/lang/model/element/TypeElement;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Module applies to a type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return v0

    .line 100
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    iget-object p2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 108
    :try_start_0
    const-class v1, Ldaggero/Module;

    invoke-static {v1, p2}, Ldaggero/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    check-cast p2, Ljavax/lang/model/element/TypeElement;

    if-nez v1, :cond_5

    const-string v1, "Missing @Module annotation."

    .line 115
    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    :cond_5
    const-string v2, "complete"

    .line 118
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Graph validation failed: "

    if-eqz v2, :cond_7

    .line 121
    :try_start_1
    invoke-direct {p0, p2, v0}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v2

    .line 122
    new-instance v4, Ldaggero/internal/ProblemDetector;

    invoke-direct {v4}, Ldaggero/internal/ProblemDetector;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldaggero/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;)V
    :try_end_1
    .catch Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ldaggero/internal/Binding$InvalidBindingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :try_start_2
    invoke-virtual {p0, p2, v2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    .line 140
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 141
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 142
    iget-object v2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Graph visualization failed. Please report this as a bug.\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-interface {v2, v5, v4, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    .line 130
    sget-object v2, Ldaggero/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " thrown by javac in graph validation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    .line 131
    :cond_6
    throw v1

    :catch_3
    move-exception p2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ldaggero/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v2

    iget-object p2, p2, Ldaggero/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :catch_4
    move-exception p2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->source:Ljavax/lang/model/element/Element;

    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :cond_7
    :goto_3
    const-string v2, "library"

    .line 148
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, p2, v1}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v1

    .line 151
    :try_start_3
    new-instance v2, Ldaggero/internal/ProblemDetector;

    invoke-direct {v2}, Ldaggero/internal/ProblemDetector;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldaggero/internal/ProblemDetector;->detectUnusedBinding(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldaggero/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :cond_8
    return v0
.end method

.method writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldaggero/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    .line 371
    invoke-static {p1}, Ldaggero/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    iget-object v3, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v3

    new-array v4, v5, [Ljavax/lang/model/element/Element;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v3, v0, v1, v2, v4}, Ljavax/annotation/processing/Filer;->createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object p1

    .line 376
    new-instance v0, Ldaggero/internal/codegen/GraphVizWriter;

    invoke-direct {v0, p1}, Ldaggero/internal/codegen/GraphVizWriter;-><init>(Ljava/io/Writer;)V

    .line 377
    new-instance p1, Ldaggero/internal/codegen/GraphVisualizer;

    invoke-direct {p1}, Ldaggero/internal/codegen/GraphVisualizer;-><init>()V

    invoke-virtual {p1, p2, v0}, Ldaggero/internal/codegen/GraphVisualizer;->write(Ljava/util/Map;Ldaggero/internal/codegen/GraphVizWriter;)V

    .line 378
    invoke-virtual {v0}, Ldaggero/internal/codegen/GraphVizWriter;->close()V

    return-void
.end method
