.class synthetic Ldaggero/internal/codegen/GraphAnalysisProcessor$3;
.super Ljava/lang/Object;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/codegen/GraphAnalysisProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$daggero$Provides$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    invoke-static {}, Ldaggero/Provides$Type;->values()[Ldaggero/Provides$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldaggero/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$daggero$Provides$Type:[I

    :try_start_0
    sget-object v1, Ldaggero/Provides$Type;->UNIQUE:Ldaggero/Provides$Type;

    invoke-virtual {v1}, Ldaggero/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ldaggero/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$daggero$Provides$Type:[I

    sget-object v1, Ldaggero/Provides$Type;->SET:Ldaggero/Provides$Type;

    invoke-virtual {v1}, Ldaggero/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Ldaggero/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$daggero$Provides$Type:[I

    sget-object v1, Ldaggero/Provides$Type;->SET_VALUES:Ldaggero/Provides$Type;

    invoke-virtual {v1}, Ldaggero/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
